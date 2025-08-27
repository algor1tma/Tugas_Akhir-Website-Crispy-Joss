@extends('component.main')

@section('content')
    <div class="pagetitle">
        <h1>Tambah Bahan Baku</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item">Manajemen</li>
                <li class="breadcrumb-item">Data Bahan Baku</li>
                <li class="breadcrumb-item active">Tambah Bahan</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->

    <section class="section">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Form Tambah Bahan Baku</h5>

                        <form action="{{ route('raw-materials.store') }}" method="POST" class="row g-3">
                            @csrf
                            <div class="col-12">
                                <label class="form-label">Nama Bahan</label> <span class="text-danger">*</span></label>
                               <input type="text" pattern="[A-Za-z\s]+" title="Hanya huruf dan spasi yang diperbolehkan" class="form-control @error('name') is-invalid @enderror" id="name" name="name" value="{{ old('name') }}" required oninput="this.value = this.value.replace(/[^A-Za-z\s]/g, '')">
                                <small class="text-danger">Wajib diisi</small>
                                @error('name')
                                    <div class="invalid-feedback">{{ $message }}</div>
                                @enderror
                            </div>

                            {{-- <div class="col-12">
                                <label class="form-label">Deskripsi</label>
                                <textarea name="description" class="form-control @error('description') is-invalid @enderror"
                                          rows="3">{{ old('description') }}</textarea>
                                          <small class="text">Opsional</small>
                                @error('description')
                                    <div class="invalid-feedback">{{ $message }}</div>
                                @enderror
                            </div> --}}

                            <div class="col-md-6">
                                <label class="form-label">Stok Awal</label><span class="text-danger">*</span></label> <small class="text-danger">Wajib diisi</small>
                                <div class="input-group">
                                    <input type="number" name="stock" class="form-control @error('stock') is-invalid @enderror"
                                           value="{{ old('stock', 0) }}" required min="0" step="0.01">
                                    <span class="input-group-text" id="unit-addon"></span> 
                                    @error('stock')
                                        <div class="invalid-feedback">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label class="form-label">Satuan</label><span class="text-danger">*</span></label> <small class="text-danger">Wajib diisi</small>
                                <select name="unit" class="form-select @error('unit') is-invalid @enderror" required
                                        onchange="updateUnitDisplay(this.value)">
                                    <option value="">Pilih Satuan</option>
                                    <option value="g">Gram (g)</option>
                                    <option value="kg">Kilogram (kg)</option>
                                    <option value="ml">Mililiter (ml)</option>
                                    <option value="l">Liter (l)</option>
                                    <option value="pcs">Pieces (pcs)</option>
                                </select>
                                @error('unit')
                                    <div class="invalid-feedback">{{ $message }}</div>
                                @enderror
                            </div>

                            <div class="col-md-6">
                                <label class="form-label">Harga per Satuan</label><span class="text-danger">*</span></label> <small class="text-danger">Wajib diisi</small>
                                <div class="input-group">
                                    <span class="input-group-text">Rp</span>
                                    <input type="text" id="price-display" class="form-control @error('price') is-invalid @enderror"
                                           value="{{ old('price') ? number_format(old('price'), 0, ',', '.') : '' }}" required min="0" step="0.01" autocomplete="off">
                                    <input type="hidden" name="price" id="price" value="{{ old('price') }}">
                                    <span class="input-group-text">/ <span class="unit-display"></span></span>
                                    @error('price')
                                        <div class="invalid-feedback">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label class="form-label">Tipe Pencatatan</label><span class="text-danger">*</span></label> <small class="text-danger">Wajib diisi</small>
                                <select name="type" class="form-select @error('type') is-invalid @enderror" required>
                                    <option value="">Pilih tipe pencatatan</option>
                                    {{-- <option value="in" {{ old('type') === 'in' ? 'selected' : '' }}>Stok Masuk (Pembelian)</option> --}}
                                    <option value="adjustment" {{ old('type') === 'adjustment' ? 'selected' : '' }}>Penambahan bahan baku baru</option>
                                </select>
                                @error('type')
                                    <div class="invalid-feedback">{{ $message }}</div>
                                @enderror
                                <small class="text-muted">
                                    Pilih "penambahan bahan baku baru" untuk menambahkan bahan baku baru
                                </small>
                            </div>

                            <div class="text-end">
                                <a href="{{ route('raw-materials.index') }}" class="btn btn-secondary">Batal</a>
                                <button type="submit" class="btn btn-primary">Simpan</button>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </section>

    @push('scripts')
    <script>
        function updateUnitDisplay(unit) {
            document.getElementById('unit-addon').textContent = unit;
            document.querySelectorAll('.unit-display').forEach(el => {
                el.textContent = unit;
            });
        }

        document.querySelector('select[name="unit"]').addEventListener('change', function(e) {
            updateUnitDisplay(e.target.value);
        });

        // Format input harga per satuan ke format rupiah (FE only)
        const priceDisplay = document.getElementById('price-display');
        const priceHidden = document.getElementById('price');
        priceDisplay.addEventListener('input', function(e) {
            let value = priceDisplay.value.replace(/[^\d]/g, '');
            if (value) {
                priceDisplay.value = parseInt(value, 10).toLocaleString('id-ID');
                priceHidden.value = value;
            } else {
                priceDisplay.value = '';
                priceHidden.value = '';
            }
        });
        // In case of autofill or back navigation
        document.addEventListener('DOMContentLoaded', function() {
            let value = priceHidden.value;
            if (value) {
                priceDisplay.value = parseInt(value, 10).toLocaleString('id-ID');
            }
        });
    </script>
    @endpush
@endsection
