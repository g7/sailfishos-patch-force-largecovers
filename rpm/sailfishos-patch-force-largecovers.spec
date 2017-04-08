# 
# Do NOT Edit the Auto-generated Part!
# Generated by: spectacle version 0.27
# 

Name:       sailfishos-patch-force-largecovers

# >> macros
# << macros

%{!?qtc_qmake:%define qtc_qmake %qmake}
%{!?qtc_qmake5:%define qtc_qmake5 %qmake5}
%{!?qtc_make:%define qtc_make make}
%{?qtc_builddir:%define _builddir %qtc_builddir}
Summary:    Force cover size
Version:    2.1.0.11
Release:    1
Group:      Applications/Productivity
License:    GPLv2+
BuildArch:  noarch
URL:        http://me.medesimo.eu
Source0:    %{name}-%{version}.tar.bz2
Source100:  sailfishos-patch-force-largecovers.yaml
Requires:   patchmanager
Requires:   lipstick-jolla-home-qt5 >= 0.34.26.9-10.129.2.jolla
Requires:   sailfish-version >= 2.1.0-10.41.11.jolla

%description
Patch that forces the large covers in the application switcher


%prep
%setup -q -n %{name}-%{version}

# >> setup
# << setup

%build
# >> build pre
# << build pre

%qtc_qmake5 

%qtc_make %{?_smp_mflags}

# >> build post
# << build post

%install
rm -rf %{buildroot}
# >> install pre
# << install pre
%qmake5_install

# >> install post
# << install post

%preun
# >> preun
if [ -x /usr/sbin/patchmanager ]; then
/usr/sbin/patchmanager -u eugenio-force-largecovers || true
fi
# << preun

%files
%defattr(-,root,root,-)
%{_datadir}/patchmanager
%{_datadir}/jolla-settings
# >> files
# << files
