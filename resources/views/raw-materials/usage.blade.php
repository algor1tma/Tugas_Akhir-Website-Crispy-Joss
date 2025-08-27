@extends('component.main')

@section('content')
<div class="pagetitle">
    <h1>Pemakaian Bahan Baku</h1>
    <nav>
        <ol class="breadcrumb">
            <li class="breadcrumb-item">Manajemen</li>
            <li class="breadcrumb-item">Data Bahan Baku</li>
            <li class="breadcrumb-item active">Pemakaian</li>
        </ol>
    </nav>
</div>
<section class="section">
    <div class="row">
        <div class="col-lg-8">
            <div class="card">
                <div class="card-body">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <h5 class="card-title mb-0">Daftar Bahan Baku</h5>
                        <div class="search-box">
                            <input type="text" class="form-control" id="searchMaterial" placeholder="Cari bahan baku...">
                        </div>
                    </div>
                    <div class="row" id="materialContainer">
                        @foreach($materials as $material)
                            <div class="col-md-4 mb-3 material-item">
                                <div class="card material-card" 
                                    data-id="{{ $material->id }}" 
                                    data-name="{{ $material->name }}" 
                                    data-stock="{{ $material->stock }}" 
                                    data-unit="{{ $material->unit }}">
                                    <div class="card-body">
                                        <h6 class="material-name">{{ $material->name }}</h6>
                                        <p class="text-muted mb-1">
                                            Stok: {{ number_format($material->stock,) }} {{ $material->unit }}
                                        </p>
                                        <button class="btn btn-sm btn-primary add-to-usage w-100">
                                            <i class="bi bi-plus-circle"></i> Tambah
                                        </button>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Detail Pemakaian</h5>
                    <form id="usage-form" action="{{ route('raw-materials.usage.store') }}" method="POST">
                        @csrf
                        <div class="usage-items mb-3">
                            <div class="alert alert-info mb-3">
                                <small>
                                    <i class="bi bi-info-circle"></i>
                                    Pemakaian bahan baku akan mengurangi stok secara langsung.
                                </small>
                            </div>
                            <table class="table table-sm" id="usage-table">
                                <thead>
                                    <tr>
                                        <th>Bahan</th>
                                        <th>Jumlah</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <!-- Item pemakaian akan ditambahkan di sini -->
                                </tbody>
                            </table>
                        </div>
                        <div class="mb-3">
                            <label for="notes" class="form-label">Catatan</label>
                            <textarea name="notes" id="notes" class="form-control" rows="2" placeholder="Catatan pemakaian (opsional)"></textarea>
                        </div>
                        <button type="submit" class="btn btn-success w-100 mb-2" id="process-usage">
                            <i class="bi bi-check-circle"></i> Proses Pemakaian
                        </button>
                        <button type="button" class="btn btn-secondary w-100" id="reset-usage">
                            <i class="bi bi-x-circle"></i> Bersihkan
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
@push('scripts')
<script>
    $(document).ready(function() {
        let usageCart = [];
        // Pencarian bahan baku
        $('#searchMaterial').on('input', function() {
            const searchTerm = $(this).val().toLowerCase();
            $('.material-item').each(function() {
                const materialName = $(this).find('.material-name').text().toLowerCase();
                if (materialName.includes(searchTerm)) {
                    $(this).show();
                } else {
                    $(this).hide();
                }
            });
        });
        // Tambah item ke keranjang pemakaian
        $('.add-to-usage').click(function() {
            const card = $(this).closest('.material-card');
            const id = card.data('id');
            const name = card.data('name');
            const stock = parseFloat(card.data('stock'));
            const unit = card.data('unit');
            // Cek apakah bahan sudah ada di keranjang
            const existingItem = usageCart.find(item => item.id === id);
            if (existingItem) {
                existingItem.quantity++;
            } else {
                usageCart.push({
                    id: id,
                    name: name,
                    stock: stock,
                    unit: unit,
                    quantity: 1
                });
            }
            updateUsageCart();
        });
        // Hapus item dari keranjang
        $(document).on('click', '.remove-usage-item', function() {
            const index = $(this).data('index');
            usageCart.splice(index, 1);
            updateUsageCart();
        });
        // Update jumlah
        $(document).on('input', '.usage-quantity', function() {
            const index = $(this).data('index');
            let newQuantity = parseFloat($(this).val()) || 0;
            if (newQuantity < 0.01) {
                newQuantity = 0.01;
                $(this).val(0.01);
            }
            usageCart[index].quantity = newQuantity;
        });
        // Update keranjang pemakaian
        function updateUsageCart() {
            $('#usage-table tbody').empty();
            usageCart.forEach((item, index) => {
                $('#usage-table tbody').append(`
                    <tr>
                        <td>
                            ${item.name}
                            <br>
                            <small class="text-muted">Stok: ${item.stock.toLocaleString('id-ID')} ${item.unit}</small>
                        </td>
                        <td>
                            <input type="number" class="form-control form-control-sm usage-quantity" 
                                data-index="${index}" value="${item.quantity}" min="0.01" step="0.01" style="width: 80px">
                            <small class="text-muted">${item.unit}</small>
                        </td>
                        <td>
                            <button type="button" class="btn btn-sm btn-danger remove-usage-item" data-index="${index}">
                                <i class="bi bi-trash"></i>
                            </button>
                        </td>
                    </tr>
                `);
            });
        }
        // Proses pemakaian
        $('#usage-form').submit(function(e) {
            e.preventDefault();
            if (usageCart.length === 0) {
                alert('Keranjang pemakaian kosong!');
                return;
            }
            // Hapus input tersembunyi yang ada
            $('.temp-usage-input').remove();
            // Tambahkan data item sebagai input tersembunyi
            usageCart.forEach((item, index) => {
                $('<input>').attr({
                    type: 'hidden',
                    class: 'temp-usage-input',
                    name: `items[${index}][material_id]`,
                    value: item.id
                }).appendTo(this);
                $('<input>').attr({
                    type: 'hidden',
                    class: 'temp-usage-input',
                    name: `items[${index}][quantity]`,
                    value: item.quantity
                }).appendTo(this);
            });
            // Kirim form
            this.submit();
        });
        // Bersihkan keranjang
        $('#reset-usage').click(function() {
            usageCart = [];
            updateUsageCart();
            $('#notes').val('');
        });
    });
</script>
@endpush
@endsection
