        program main
        implicit none
        integer(kind=selected_int_kind(16)),allocatable::tl1(:),tl2(:),tktyp(:)
        real*8,allocatable::txtt(:),txjjxy(:),txjjz(:)
        integer::i, tnrows, tntrou,tisz
        real*4::t1,t2
        real*8,allocatable::tval(:)
        integer(kind=selected_int_kind(16)),allocatable::tcol(:)
        integer(kind=selected_int_kind(16)),dimension(10)::tcountcol
        integer(kind=selected_int_kind(16))::tistart
        allocate (tl1(maxlien))
        allocate (tl2(maxlien))
        allocate (tktyp(maxlien))
        allocate (tcol(maxlien))
        allocate (tval(maxlien))
        allocate (txjjxy(maxlien))
        allocate (txjjz (maxlien))
        allocate (txtt  (maxlien))
        tl1=0
        tl2=0
        tktyp=0
        txjjxy =0
        txjjz  =0
        txtt   =0
        tcountcol=0
        tcol=0
        tval=0d0
        tntrou=1
        tnrows=10
        tisz=0
        do i=1,30,tnrows
        istart = i
        tistart = istart
!       tl1=(/1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11,12, 1, 2, 3, 4, 5, 6, 7, 8, 9,10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24,25,0,0,0,0,0/)
!       tl2=(/2, 3, 4, 5, 6, 7, 8, 9,10, 11, 12,13,26,25,24,23,22,21,20,19,18,17, 16, 15, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25,26,0,0,0,0,0/)
!     tktyp=(/1, 1, 1, 1, 1, 1, 1, 1, 1,  1,  1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,  2,  2,  2,  3,  3,  3,  3,  3,  3,  3,  3,  3,  3,  3, 3,0,0,0,0,0/)
!       tl1=(/1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 1, 2, 3, 4, 5, 6, 7, 8, 9,10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23,0,0,0,0,0,0,0,0/)
!       tl2=(/2, 3, 4, 5, 6, 7, 8, 9,10, 11, 12,24,23,22,21,20,19,18,17,16,15, 14, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24,0,0,0,0,0,0,0,0/)
!     tktyp=(/1, 1, 1, 1, 1, 1, 1, 1, 1,  1,  1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,  2,  2,  3,  3,  3,  3,  3,  3,  3,  3,  3,  3,  3,0,0,0,0,0,0,0,0/)
!       tl1=(/1, 2, 3, 4, 5, 6, 7, 8, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0/)
!       tl2=(/2, 3, 4, 5, 6, 7, 8, 9,18,17,16,15,14,13,12,11,10, 11, 12, 13, 14, 15, 16, 17, 18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0/)
!       tktyp=(/1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2,  3,  3,  3,  3,  3,  3,  3,  3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0/)
!       tl1=(/1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17,18,19,20,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0/)
!       tl2=(/2, 3, 4, 5, 6, 7, 8, 9,10, 11,22,21,20,19,18,17,16,15,14, 13, 12, 13, 14, 15, 16, 17, 18,19,20,21,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0/)
!       tktyp=(/1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2,  2,  2,  2,  2,  3,  3,  3,  3,3,3,3,3,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0/)
        tl1=  (/1, 1, 2, 6, 2, 5, 3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0/)
        tl2=  (/2, 6, 5, 5, 3, 4, 4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0/)
        tktyp=(/1, 2, 2, 3, 1, 3, 2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0/)
!       tl1=  (/1, 2, 3, 4, 5, 6, 1, 2, 3, 4, 5,6,7,14,13,12,11,10, 9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0/)
!       tl2=  (/2, 3, 4, 5, 6, 7,14,13,12,11,10,9,8,13,12,11,10, 9, 8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0/)
!       tktyp=(/1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2,2,2,3,3,3,3,3,3,3,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0/)
        txjjz= (/.1000d0,-0.8d0,0.000d0/)
        txjjxy=(/.1000d0,-0.8d0,0.000d0/)
        txtt=  (/-1.0000d0,0.d0,0.0d0/)
!       tl1=  (/1, 2, 3, 4, 1, 2, 3,4,5,6,7,8,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0/)
!       tl2=  (/2, 3, 4, 5,10, 9, 8,7,6,7,8,9,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0/)
!       tktyp=(/1, 1, 1, 1, 2, 2, 2,2,2,3,3,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0/)
        t1=secnds(0.0)
        call unit_l1(tl1,              &
                     tl2,              &
                     tktyp,            &
                     tistart,          &
                     tnrows,           &
                     txjjxy,           &
                     txjjz ,           &
                     txtt  ,           &
                     tcountcol,        &
                     tntrou,           &
                     tisz,             &
                     tcol,tval)
        t2=secnds(t1)
        print *,'time=',t2
        enddo

!       deallocate (tl1)
!       deallocate (tl2)
!       deallocate (tktyp)
!       deallocate (tcol)
!       deallocate (tval)
!       deallocate (txjjxy)
!       deallocate (txjjz )
!       deallocate (txtt  )
        end
