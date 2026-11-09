program sum_to_n                                ! 程式開始，名稱為 sum_to_n
  implicit none                                 ! 關閉隱式型別，所有變數都必須先宣告
  integer(kind=8) :: n, i, total                ! 宣告 64 位元整數：n 上限、i 迴圈計數、total 總和

  print *, 'Enter N:'                           ! 提示使用者輸入 N
  read *, n                                     ! 從標準輸入讀取 N

  if (n < 1) then                               ! 檢查 N 是否小於 1
    print *, 'N must be a positive integer.'    ! 輸入不合法時顯示錯誤訊息
    stop 1                                      ! 以錯誤代碼 1 結束程式
  end if                                        ! 結束 if 判斷

  total = 0                                     ! 總和歸零
  do i = 1, n                                   ! 迴圈：i 從 1 跑到 n
    total = total + i                           ! 每次把 i 加進總和
  end do                                        ! 迴圈結束

  print *, 'Sum of 1 to', n, '=', total         ! 輸出計算結果
end program sum_to_n                            ! 程式結束
