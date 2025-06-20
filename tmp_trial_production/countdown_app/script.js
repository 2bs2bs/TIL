// HTML要素を取得
const movingCompletionDateElement = document.getElementById('movingCompletionDate');
const twoMonthAgoElement = document.getElementById('twoMonthAgo');
const oneAndHalfMonthAgoElement = document.getElementById('OneMonthHalfAgo');
const oneMonthAgoElement = document.getElementById('oneMonthAgo'); // 1ヶ月前用

// 今日の日付
const today = new Date();

// 目的の日付を設定
const targetDay = new Date('2024-9-21');

// 日付の差を計算
const differenceInTime = targetDay.getTime() - today.getTime();
const differenceInDays = Math.ceil(differenceInTime / (1000 * 60 * 60 * 24));

// 残りの日数を表示
movingCompletionDateElement.textContent = `あと ${differenceInDays} 日`;

// 2ヶ月前の日付を計算
const twoMonthAgoDay = new Date(targetDay);
twoMonthAgoDay.setMonth(twoMonthAgoDay.getMonth() - 2);

// 2ヶ月前までの残り日数を計算
const differenceInTimeTwoMonthsAgo = twoMonthAgoDay.getTime() - today.getTime();
const differenceInDaysTwoMonthsAgo = Math.ceil(differenceInTimeTwoMonthsAgo / (1000 * 60 * 60 * 24));

// 2ヶ月前までの残り日数を表示
twoMonthAgoElement.textContent = `2ヶ月前まであと ${differenceInDaysTwoMonthsAgo} 日`;

// 1ヶ月半前の日付を計算 (45日)
const oneAndHalfMonthAgoDay = new Date(targetDay);
oneAndHalfMonthAgoDay.setDate(oneAndHalfMonthAgoDay.getDate() - 45);

// 1ヶ月半前までの残り日数を計算
const differenceInTimeOneAndHalfMonthsAgo = oneAndHalfMonthAgoDay.getTime() - today.getTime();
const differenceInDaysOneAndHalfMonthsAgo = Math.ceil(differenceInTimeOneAndHalfMonthsAgo / (1000 * 60 * 60 * 24));

// 1ヶ月半前までの残り日数を表示
oneAndHalfMonthAgoElement.textContent = `1ヶ月半前まであと ${differenceInDaysOneAndHalfMonthsAgo} 日`;

// 1ヶ月前の日付を計算
const oneMonthAgoDay = new Date(targetDay);
oneMonthAgoDay.setMonth(oneMonthAgoDay.getMonth() - 1);

// 1ヶ月前までの残り日数を計算
const differenceInTimeOneMonthAgo = oneMonthAgoDay.getTime() - today.getTime();
const differenceInDaysOneMonthAgo = Math.ceil(differenceInTimeOneMonthAgo / (1000 * 60 * 60 * 24));

// 1ヶ月前までの残り日数を表示
oneMonthAgoElement.textContent = `1ヶ月前まであと ${differenceInDaysOneMonthAgo} 日`;
