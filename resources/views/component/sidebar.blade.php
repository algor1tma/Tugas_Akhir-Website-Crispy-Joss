<aside id="sidebar" class="sidebar">
    <ul class="sidebar-nav" id="sidebar-nav">
        @if (auth()->user()->roles === 'super' || auth()->user()->roles === 'admin')
            <li class="nav-item">
                <a class="nav-link {{ Request::is('dashboard*') ? '' : 'collapsed' }}"
                    href="{{ route('indexDashboard') }}">
                    <i class="bi bi-grid"></i>
                    <span>Dashboard</span>
                </a>
            </li>

            @if (auth()->user()->roles === 'super')
                <li class="nav-item">
                    <a class="nav-link {{ Request::is('super/manage-users*') || Request::is('super/create-user*') || Request::is('super/edit-user*') ? '' : 'collapsed' }}"
                        data-bs-target="#user-management-nav" data-bs-toggle="collapse" href="#">
                        <i class="bi bi-people"></i><span>User Management</span><i
                            class="bi bi-chevron-down ms-auto"></i>
                    </a>
                    <ul id="user-management-nav"
                        class="nav-content collapse {{ Request::is('super/manage-users*') || Request::is('super/create-user*') || Request::is('super/edit-user*') ? 'show' : '' }}"
                        data-bs-parent="#sidebar-nav">
                        <li>
                            <a href="{{ route('super.manage-users') }}"
                                class="{{ Request::is('super/manage-users*') ? 'text-primary' : '' }}">
                                <i class="bi bi-list"></i><span>Manage Users</span>
                            </a>
                        </li>
                        <li>
                            <a href="{{ route('super.create-user') }}"
                                class="{{ Request::is('super/create-user*') ? 'text-primary' : '' }}">
                                <i class="bi bi-person-plus"></i><span>Add New User</span>
                            </a>
                        </li>
                    </ul>
                </li>
            @endif

            <li class="nav-item">
                <a class="nav-link {{ Request::is('raw-materials*') || Request::is('low-stock-materials*') ? '' : 'collapsed' }}"
                    data-bs-target="#raw-materials-nav" data-bs-toggle="collapse" href="#">
                    <i class="bi bi-boxes"></i><span>Bahan Baku</span><i class="bi bi-chevron-down ms-auto"></i>
                </a>
                <ul id="raw-materials-nav"
                    class="nav-content collapse {{ Request::is('raw-materials*') || Request::is('low-stock-materials*') ? 'show' : '' }}"
                    data-bs-parent="#sidebar-nav">
                    <li>
                        <a href="{{ route('raw-materials.index') }}"
                            class="{{ Request::is('raw-materials') ? 'text-primary' : '' }}">
                            <i class=""></i><span>Daftar Bahan</span>
                        </a>
                    </li>
                    <li>
                        <a href="{{ route('raw-materials.purchase') }}"
                            class="{{ Request::is('raw-materials/purchase') ? 'text-primary' : '' }}">
                            <i class=""></i><span>Pembelian</span>
                        </a>
                    </li>
                    <li>
                        <a href="{{ route('raw-materials.usage') }}"
                            class="{{ Request::is('raw-materials-usage') ? 'text-primary' : '' }}">
                            <i class=""></i><span>Pemakaian</span>
                        </a>
                    </li>
                    <li>
                        <a href="{{ route('raw-materials.low-stock') }}"
                            class="{{ Request::is('low-stock-materials') ? 'text-primary' : '' }}">
                            <i class=""></i><span>Stok Menipis</span>
                        </a>
                    </li>

                    <li>
                        <a href="{{ route('raw-materials.report') }}"
                            class="{{ Request::is('raw-materials-report') ? 'text-primary' : '' }}">
                            <i class=""></i><span>Laporan</span>
                        </a>
                    </li>

                    
                </ul>
            </li>

            <li class="nav-item">
                <a class="nav-link {{ Request::is('produk*') ? '' : 'collapsed' }}"
                    href="{{ route('produk.index') }}">
                    <i class="bi bi-box"></i>
                    <span>Produk</span>
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link {{ Request::is('pos*') ? '' : 'collapsed' }}" href="{{ route('pos.index') }}">
                    <i class="bi bi-cart"></i>
                    <span>Point of Sale</span>
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link {{ Request::is('laporan-penjualan*') ? '' : 'collapsed' }}"
                    href="{{ route('laporanpenjualan.index') }}">
                    <i class="bi bi-file-earmark-text"></i>
                    <span>Laporan Penjualan</span>
                </a>
            </li>
        @elseif (auth()->user()->roles === 'karyawan')
            <li class="nav-item">
                <a class="nav-link {{ Request::is('dashboard*') ? '' : 'collapsed' }}"
                    href="{{ route('indexDashboard') }}">
                    <i class="bi bi-grid"></i>
                    <span>Dashboard</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link {{ Request::is('raw-materials*') || Request::is('low-stock-materials*') ? '' : 'collapsed' }}"
                    data-bs-target="#raw-materials-nav" data-bs-toggle="collapse" href="#">
                    <i class="bi bi-boxes"></i><span>Bahan Baku</span><i class="bi bi-chevron-down ms-auto"></i>
                </a>
                <ul id="raw-materials-nav"
                    class="nav-content collapse {{ Request::is('raw-materials*') || Request::is('low-stock-materials*') ? 'show' : '' }}"
                    data-bs-parent="#sidebar-nav">
                    <li>
                        <a href="{{ route('raw-materials.index') }}"
                            class="{{ Request::is('raw-materials') ? 'text-primary' : '' }}">
                            <i class="bi bi-list-ul"></i><span>Daftar Bahan</span>
                        </a>
                    </li>
                    <li>
                        <a href="{{ route('raw-materials.purchase') }}"
                            class="{{ Request::is('raw-materials/purchase') ? 'text-primary' : '' }}">
                            <i class="bi bi-cart-plus"></i><span>Pembelian</span>
                        </a>
                    </li>
                    <li>
                        <a href="{{ route('raw-materials.low-stock') }}"
                            class="{{ Request::is('low-stock-materials') ? 'text-primary' : '' }}">
                            <i class="bi bi-exclamation-triangle"></i><span>Stok Menipis</span>
                        </a>
                    </li>
                    
                </ul>
            </li>

            <li class="nav-item">
                <a class="nav-link {{ Request::is('produk*') ? '' : 'collapsed' }}"
                    href="{{ route('produk.index') }}">
                    <i class="bi bi-box"></i>
                    <span>Produk</span>
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link {{ Request::is('pos*') ? '' : 'collapsed' }}" href="{{ route('pos.index') }}">
                    <i class="bi bi-cart"></i>
                    <span>Point of Sale</span>
                </a>
            </li>
        @endif
    </ul>
</aside>
