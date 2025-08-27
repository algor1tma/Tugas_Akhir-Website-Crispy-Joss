@extends('component.main')

@section('content')
    <div class="pagetitle">
        <h1>Edit Bahan Baku</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item">Manajemen</li>
                <li class="breadcrumb-item">Data Bahan Baku</li>
                <li class="breadcrumb-item active">Edit Bahan</li>
            </ol>
        </nav>
    </div>

    <section class="section">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Form Edit Bahan Baku</h5>

                        <form action="{{ route('raw-materials.update', $rawMaterial->id) }}" method="POST" class="row g-3">
                            @csrf
                            @method('PUT')
                            <div class="row mb-3">
                                <label class="col-sm-2 col-form-label">Nama Bahan</label>
                                <div class="col-sm-10">

                                        <input type="text" pattern="[A-Za-z\s]+" title="Hanya huruf dan spasi yang diperbolehkan" class="form-control @error('name') is-invalid @enderror" id="name" name="name" value="{{ old('name', $rawMaterial->name) }}" required oninput="this.value = this.value.replace(/[^A-Za-z\s]/g, '')">
                                    @error('name')
                                        <div class="invalid-feedback">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>

                            {{-- <div class="col-12">
                                <label class="form-label">Deskripsi</label>
                                <textarea name="description" class="form-control @error('description') is-invalid @enderror" 
                                          rows="3">{{ old('description', $rawMaterial->description) }}</textarea>
                                @error('description')
                                    <div class="invalid-feedback">{{ $message }}</div>
                                @enderror
                            </div> --}}

                            <div class="col-md-6">
                                <label class="form-label">Stok</label>
                                <input type="text" name="stock" id="stock" class="form-control @error('stock') is-invalid @enderror" 
                                       value="{{ number_format(old('stock', $rawMaterial->stock), 0, '', ',') }}" required min="0" inputmode="numeric">
                                @error('stock')
                                    <div class="invalid-feedback">{{ $message }}</div>
                                @enderror
                            </div>

                            <div class="col-md-6">
                                <label class="form-label">Minimum Stok</label>
                                <input type="text" name="minimum_stock" id="minimum_stock" class="form-control @error('minimum_stock') is-invalid @enderror" 
                                       value="{{ number_format(old('minimum_stock', $rawMaterial->minimum_stock), 0, '', ',') }}" required min="0" inputmode="numeric">
                                @error('minimum_stock')
                                    <div class="invalid-feedback">{{ $message }}</div>
                                @enderror
                            </div>

                            <div class="col-md-6">
                                <label class="form-label">Satuan</label>
                                <select name="unit" class="form-select @error('unit') is-invalid @enderror" required
                                        onchange="updateUnitDisplay(this.value)">
                                    <option value="">Pilih Satuan</option>
                                    <option value="g" {{ old('unit', $rawMaterial->unit) == 'g' ? 'selected' : '' }}>Gram (g)</option>
                                    <option value="kg" {{ old('unit', $rawMaterial->unit) == 'kg' ? 'selected' : '' }}>Kilogram (kg)</option>
                                    <option value="ml" {{ old('unit', $rawMaterial->unit) == 'ml' ? 'selected' : '' }}>Mililiter (ml)</option>
                                    <option value="l" {{ old('unit', $rawMaterial->unit) == 'l' ? 'selected' : '' }}>Liter (l)</option>
                                    <option value="pcs" {{ old('unit', $rawMaterial->unit) == 'pcs' ? 'selected' : '' }}>Pieces (pcs)</option>
                                </select>
                                @error('unit')
                                    <div class="invalid-feedback">{{ $message }}</div>
                                @enderror
                            </div>

                            <div class="col-md-6">
                                <label class="form-label">Harga per Satuan</label>
                                <div class="input-group">
                                    <span class="input-group-text">Rp</span>
                                    <input type="text" name="price" id="price" class="form-control @error('price') is-invalid @enderror" 
                                           value="{{ number_format(old('price', $rawMaterial->price), 0, '', ',') }}" required min="0" inputmode="numeric">
                                    @error('price')
                                        <div class="invalid-feedback">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>

                            <div class="text-end">
                                <a href="{{ route('raw-materials.index') }}" class="btn btn-secondary">Batal</a>
                                <button type="submit" class="btn btn-primary">Simpan Perubahan</button>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

@push('scripts')
<script>
$(document).ready(function() {
    function formatNumberInput(input) {
        let value = input.value.replace(/[^\d]/g, '');
        if (value) {
            value = parseInt(value, 10).toLocaleString('en-US');
        } else {
            value = '';
        }
        input.value = value;
    }
    $('#stock, #minimum_stock, #price').on('input', function() {
        formatNumberInput(this);
    });
    // Remove commas before submit
    $('form').on('submit', function() {
        $('#stock, #minimum_stock, #price').each(function() {
            this.value = this.value.replace(/,/g, '');
        });
    });
});
</script>
@endpush