.class public Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "AlarmEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final CUSTOM:I = 0x3

.field private static final EVERY_DAY:I = 0x2

.field private static final ONLY_ONCE:I = 0x0

.field public static final RESULT_CODE_ADD:I = 0x2

.field public static final RESULT_CODE_REMOVE:I = 0x1

.field public static final RESULT_CODE_UPDATE:I = 0x3

.field private static final WORK_DAYS:I = 0x1


# instance fields
.field private HOUR_STRING:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private MINUTES_STRING:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private alarmHour:Ljava/lang/String;

.field private alarmMinute:Ljava/lang/String;

.field private alram_checkbox_cus:Landroid/widget/CheckBox;

.field private alram_checkbox_everyday:Landroid/widget/CheckBox;

.field private alram_checkbox_once:Landroid/widget/CheckBox;

.field private alram_checkbox_work_days:Landroid/widget/CheckBox;

.field private alram_ly_cus:Landroid/widget/RelativeLayout;

.field private alram_ly_delete:Landroid/widget/RelativeLayout;

.field private alram_ly_everyday:Landroid/widget/RelativeLayout;

.field private alram_ly_once:Landroid/widget/RelativeLayout;

.field private alram_ly_work_days:Landroid/widget/RelativeLayout;

.field array_check:[Z

.field private array_week:[Ljava/lang/String;

.field private bAddAlarm:Z

.field private check_number:I

.field private hourOnWheelViewListener:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$WheelItemSelectedListener;

.field private ib_back:Landroid/widget/ImageView;

.field private minuteOnWheelViewListener:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$WheelItemSelectedListener;

.field radioArray:[Landroid/widget/CheckBox;

.field radio_fra:Landroid/widget/CheckBox;

.field radio_mon:Landroid/widget/CheckBox;

.field radio_sat:Landroid/widget/CheckBox;

.field radio_sun:Landroid/widget/CheckBox;

.field radio_thu:Landroid/widget/CheckBox;

.field radio_tue:Landroid/widget/CheckBox;

.field radio_wen:Landroid/widget/CheckBox;

.field private save_alarm:Landroid/widget/TextView;

.field private strAlarm:Ljava/lang/String;

.field private time_remain:Landroid/widget/TextView;

.field private wheelView_hour:I

.field private wheelView_minutes:I

.field private wheel_hour:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

.field private wheel_mins:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 34
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->bAddAlarm:Z

    .line 61
    const/4 v0, 0x2

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->check_number:I

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->HOUR_STRING:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->MINUTES_STRING:Ljava/util/ArrayList;

    .line 65
    new-array v0, v1, [Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->radioArray:[Landroid/widget/CheckBox;

    .line 66
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->array_check:[Z

    .line 107
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity$1;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->hourOnWheelViewListener:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$WheelItemSelectedListener;

    .line 116
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity$2;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity$2;-><init>(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->minuteOnWheelViewListener:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$WheelItemSelectedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;

    .prologue
    .line 34
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->wheelView_hour:I

    return v0
.end method

.method static synthetic access$002(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->wheelView_hour:I

    return p1
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;

    .prologue
    .line 34
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->wheelView_minutes:I

    return v0
.end method

.method static synthetic access$102(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->wheelView_minutes:I

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;II)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->setTimeRemind(II)V

    return-void
.end method

.method private boxCheckChange(I)V
    .locals 4
    .param p1, "which_box"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 412
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->check_number:I

    if-ne p1, v1, :cond_0

    .line 478
    :goto_0
    return-void

    .line 415
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 417
    :pswitch_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_checkbox_work_days:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 418
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_checkbox_work_days:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 420
    :cond_1
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_checkbox_everyday:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 421
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_checkbox_everyday:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 423
    :cond_2
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_checkbox_cus:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 424
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_checkbox_cus:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 426
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->array_check:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_e

    .line 427
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->array_check:[Z

    aput-boolean v2, v1, v0

    .line 426
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 431
    .end local v0    # "i":I
    :pswitch_1
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_checkbox_once:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 432
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_checkbox_once:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 434
    :cond_4
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_checkbox_everyday:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 435
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_checkbox_everyday:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 437
    :cond_5
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_checkbox_cus:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 438
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_checkbox_cus:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 440
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->array_check:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_e

    .line 441
    if-eqz v0, :cond_7

    const/4 v1, 0x6

    if-ne v0, v1, :cond_8

    .line 442
    :cond_7
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->array_check:[Z

    aput-boolean v2, v1, v0

    .line 440
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 444
    :cond_8
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->array_check:[Z

    aput-boolean v3, v1, v0

    goto :goto_3

    .line 449
    .end local v0    # "i":I
    :pswitch_2
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_checkbox_once:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 450
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_checkbox_once:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 452
    :cond_9
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_checkbox_work_days:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 453
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_checkbox_work_days:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 455
    :cond_a
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_checkbox_cus:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 456
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_checkbox_cus:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 458
    :cond_b
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->array_check:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_e

    .line 459
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->array_check:[Z

    aput-boolean v3, v1, v0

    .line 458
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 463
    .end local v0    # "i":I
    :pswitch_3
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_checkbox_once:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 464
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_checkbox_once:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 466
    :cond_c
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_checkbox_work_days:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 467
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_checkbox_work_days:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 469
    :cond_d
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_checkbox_everyday:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 470
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_checkbox_everyday:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 477
    :cond_e
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->check_number:I

    goto/16 :goto_0

    .line 415
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getCheckNumberHint(Ljava/lang/String;)I
    .locals 10
    .param p1, "week"    # Ljava/lang/String;

    .prologue
    .line 302
    const/4 v3, 0x3

    .line 303
    .local v3, "hint":I
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 305
    .local v6, "weeks":[C
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v8, 0x7

    if-ge v4, v8, :cond_1

    .line 306
    aget-char v1, v6, v4

    .line 307
    .local v1, "ch":C
    const/16 v8, 0x31

    if-ne v1, v8, :cond_0

    .line 308
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->array_check:[Z

    const/4 v9, 0x1

    aput-boolean v9, v8, v4

    .line 305
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 310
    :cond_0
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->array_check:[Z

    const/4 v9, 0x0

    aput-boolean v9, v8, v4

    goto :goto_1

    .line 314
    .end local v1    # "ch":C
    :cond_1
    const/4 v5, 0x1

    .line 315
    .local v5, "onlyonce":Z
    const/4 v4, 0x0

    :goto_2
    const/16 v8, 0x8

    if-ge v4, v8, :cond_3

    .line 316
    aget-char v0, v6, v4

    .line 317
    .local v0, "c":C
    const/4 v8, 0x7

    if-ge v4, v8, :cond_2

    .line 319
    const/16 v8, 0x31

    if-ne v0, v8, :cond_2

    .line 320
    const/4 v5, 0x0

    .line 315
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 324
    .end local v0    # "c":C
    :cond_3
    if-eqz v5, :cond_4

    .line 325
    const/4 v3, 0x0

    .line 328
    :cond_4
    const/4 v7, 0x1

    .line 329
    .local v7, "workday":Z
    const/4 v4, 0x1

    :goto_3
    const/4 v8, 0x6

    if-ge v4, v8, :cond_6

    .line 330
    aget-char v0, v6, v4

    .line 331
    .restart local v0    # "c":C
    const/16 v8, 0x30

    if-ne v0, v8, :cond_5

    .line 332
    const/4 v7, 0x0

    .line 329
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 337
    .end local v0    # "c":C
    :cond_6
    const/4 v8, 0x0

    aget-char v8, v6, v8

    const/16 v9, 0x31

    if-eq v8, v9, :cond_7

    const/4 v8, 0x6

    aget-char v8, v6, v8

    const/16 v9, 0x31

    if-ne v8, v9, :cond_8

    .line 338
    :cond_7
    const/4 v7, 0x0

    .line 341
    :cond_8
    if-eqz v7, :cond_9

    .line 342
    const/4 v3, 0x1

    .line 345
    :cond_9
    const/4 v2, 0x1

    .line 346
    .local v2, "everyday":Z
    const/4 v4, 0x0

    :goto_4
    const/4 v8, 0x7

    if-ge v4, v8, :cond_b

    .line 347
    aget-char v0, v6, v4

    .line 348
    .restart local v0    # "c":C
    const/16 v8, 0x30

    if-ne v0, v8, :cond_a

    .line 349
    const/4 v2, 0x0

    .line 346
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 352
    .end local v0    # "c":C
    :cond_b
    if-eqz v2, :cond_c

    .line 353
    const/4 v3, 0x2

    .line 355
    :cond_c
    return v3
.end method

.method private getWeekSting()Ljava/lang/String;
    .locals 5

    .prologue
    .line 533
    const-string v1, ""

    .line 534
    .local v1, "weekString":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->array_check:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 535
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->array_check:[Z

    aget-boolean v2, v2, v0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    const-string v2, "1"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 534
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 535
    :cond_0
    const-string v2, "0"

    goto :goto_1

    .line 537
    :cond_1
    return-object v1
.end method

.method private initAlarmUI(Ljava/lang/String;)V
    .locals 13
    .param p1, "alarmString"    # Ljava/lang/String;

    .prologue
    const v12, 0x3f19999a    # 0.6f

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/16 v9, 0xa

    const/4 v8, -0x1

    .line 201
    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "alarmStringItem":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v5, 0x3c

    if-ge v3, v5, :cond_3

    .line 205
    const/16 v5, 0x18

    if-ge v3, v5, :cond_0

    .line 206
    if-ge v3, v9, :cond_1

    .line 207
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->HOUR_STRING:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_0
    :goto_1
    if-ge v3, v9, :cond_2

    .line 213
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->MINUTES_STRING:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 209
    :cond_1
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->HOUR_STRING:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 215
    :cond_2
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->MINUTES_STRING:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 220
    :cond_3
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->wheel_hour:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->HOUR_STRING:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setLabels(Ljava/util/List;)V

    .line 222
    :try_start_0
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->wheel_hour:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setWheelSize(I)V
    :try_end_0
    .catch Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_3
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->wheel_mins:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->MINUTES_STRING:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setLabels(Ljava/util/List;)V

    .line 229
    :try_start_1
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->wheel_mins:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setWheelSize(I)V
    :try_end_1
    .catch Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewException; {:try_start_1 .. :try_end_1} :catch_1

    .line 236
    :goto_4
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->wheel_hour:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setCycleEnable(Z)V

    .line 237
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->wheel_hour:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    invoke-virtual {v5, v12}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setAlphaGradual(F)V

    .line 238
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->wheel_hour:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    const-string v6, "#5ED1DC"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setDivider(II)V

    .line 239
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->wheel_hour:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    invoke-virtual {v5, v8, v8}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setSolid(II)V

    .line 240
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->wheel_hour:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setLabelColor(I)V

    .line 241
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->wheel_hour:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    const-string v6, "#5ED1DC"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setLabelSelectColor(I)V

    .line 243
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->wheel_mins:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setCycleEnable(Z)V

    .line 244
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->wheel_mins:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    invoke-virtual {v5, v12}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setAlphaGradual(F)V

    .line 245
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->wheel_mins:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    const-string v6, "#5ED1DC"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setDivider(II)V

    .line 246
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->wheel_mins:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    invoke-virtual {v5, v8, v8}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setSolid(II)V

    .line 247
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->wheel_mins:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setLabelColor(I)V

    .line 248
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->wheel_mins:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    const-string v6, "#5ED1DC"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setLabelSelectColor(I)V

    .line 250
    array-length v5, v0

    if-ge v5, v11, :cond_4

    .line 270
    :goto_5
    return-void

    .line 223
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewException;
    invoke-virtual {v1}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewException;->printStackTrace()V

    goto :goto_3

    .line 230
    .end local v1    # "e":Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewException;
    :catch_1
    move-exception v1

    .line 231
    .restart local v1    # "e":Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewException;
    invoke-virtual {v1}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewException;->printStackTrace()V

    goto :goto_4

    .line 255
    .end local v1    # "e":Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewException;
    :cond_4
    aget-object v5, v0, v11

    const/16 v6, 0x8

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alarmHour:Ljava/lang/String;

    .line 257
    aget-object v5, v0, v11

    const/16 v6, 0xc

    invoke-virtual {v5, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alarmMinute:Ljava/lang/String;

    .line 259
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alarmHour:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 260
    .local v2, "hour":I
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alarmMinute:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 262
    .local v4, "minutes":I
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->wheel_hour:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    invoke-virtual {v5, v2}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setSelection(I)V

    .line 263
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->wheel_mins:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    invoke-virtual {v5, v4}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setSelection(I)V

    .line 264
    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->wheelView_hour:I

    .line 265
    iput v4, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->wheelView_minutes:I

    .line 267
    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->wheelView_hour:I

    iget v6, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->wheelView_minutes:I

    invoke-direct {p0, v5, v6}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->setTimeRemind(II)V

    .line 269
    aget-object v5, v0, v10

    invoke-direct {p0, v5}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->getCheckNumberHint(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->setCheck(I)V

    goto :goto_5
.end method

.method private initData()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 91
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->strAlarm:Ljava/lang/String;

    .line 93
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isAdd"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->bAddAlarm:Z

    .line 95
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->bAddAlarm:Z

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_ly_delete:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 101
    :goto_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_ly_delete:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->strAlarm:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->initAlarmUI(Ljava/lang/String;)V

    .line 104
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_ly_delete:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 149
    const v0, 0x7f0e0078

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->wheel_mins:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    .line 150
    const v0, 0x7f0e0077

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->wheel_hour:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    .line 152
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->wheel_hour:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->hourOnWheelViewListener:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$WheelItemSelectedListener;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setOnWheelItemSelectedListener(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$WheelItemSelectedListener;)V

    .line 153
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->wheel_mins:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->minuteOnWheelViewListener:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$WheelItemSelectedListener;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setOnWheelItemSelectedListener(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$WheelItemSelectedListener;)V

    .line 157
    const v0, 0x7f0e007a

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_ly_once:Landroid/widget/RelativeLayout;

    .line 158
    const v0, 0x7f0e007c

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_ly_work_days:Landroid/widget/RelativeLayout;

    .line 159
    const v0, 0x7f0e007e

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_ly_everyday:Landroid/widget/RelativeLayout;

    .line 160
    const v0, 0x7f0e0080

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_ly_cus:Landroid/widget/RelativeLayout;

    .line 161
    const v0, 0x7f0e0082

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_ly_delete:Landroid/widget/RelativeLayout;

    .line 163
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_ly_once:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_ly_work_days:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_ly_everyday:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_ly_cus:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_ly_delete:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    const v0, 0x7f0e0079

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->time_remain:Landroid/widget/TextView;

    .line 171
    const v0, 0x7f0e0070

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->ib_back:Landroid/widget/ImageView;

    .line 172
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->ib_back:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    const v0, 0x7f0e0076

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->save_alarm:Landroid/widget/TextView;

    .line 175
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->save_alarm:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    const v0, 0x7f0e007b

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_checkbox_once:Landroid/widget/CheckBox;

    .line 179
    const v0, 0x7f0e007d

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_checkbox_work_days:Landroid/widget/CheckBox;

    .line 180
    const v0, 0x7f0e007f

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_checkbox_everyday:Landroid/widget/CheckBox;

    .line 181
    const v0, 0x7f0e0081

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_checkbox_cus:Landroid/widget/CheckBox;

    .line 183
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_checkbox_once:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 184
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_checkbox_work_days:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 185
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_checkbox_everyday:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 186
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_checkbox_cus:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 188
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_checkbox_once:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 190
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->array_week:[Ljava/lang/String;

    .line 191
    return-void
.end method

.method private setCheck(I)V
    .locals 2
    .param p1, "hint"    # I

    .prologue
    const/4 v1, 0x1

    .line 273
    packed-switch p1, :pswitch_data_0

    .line 287
    :goto_0
    return-void

    .line 275
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_checkbox_once:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 278
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_checkbox_work_days:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 281
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_checkbox_everyday:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 284
    :pswitch_3
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_checkbox_cus:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setTimeRemind(II)V
    .locals 9
    .param p1, "hour"    # I
    .param p2, "minutes"    # I

    .prologue
    const v8, 0x7f0801a0

    const v7, 0x7f08014e

    .line 131
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 132
    .local v3, "time":Landroid/text/format/Time;
    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 133
    mul-int/lit8 v4, p1, 0x3c

    add-int v0, v4, p2

    .line 134
    .local v0, "alarm_in_minute":I
    iget v4, v3, Landroid/text/format/Time;->hour:I

    mul-int/lit8 v4, v4, 0x3c

    iget v5, v3, Landroid/text/format/Time;->minute:I

    add-int v1, v4, v5

    .line 135
    .local v1, "current_in_minute":I
    const/4 v2, 0x0

    .line 136
    .local v2, "remian_in_minutes":I
    if-le v1, v0, :cond_0

    .line 137
    rsub-int v4, v1, 0x5a0

    add-int v2, v4, v0

    .line 141
    :goto_0
    const/16 v4, 0x3c

    if-le v2, v4, :cond_1

    .line 142
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->time_remain:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v6, v2, 0x3c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f080131

    invoke-virtual {p0, v6}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    rem-int/lit8 v6, v2, 0x3c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v8}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v7}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :goto_1
    return-void

    .line 139
    :cond_0
    sub-int v2, v0, v1

    goto :goto_0

    .line 144
    :cond_1
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->time_remain:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    rem-int/lit8 v6, v2, 0x3c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v8}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v7}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private showMultDialog()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 542
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 543
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 545
    .local v0, "ad":Landroid/app/Dialog;
    const/4 v6, 0x0

    .line 546
    .local v6, "layout":Landroid/view/View;
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v7

    if-nez v7, :cond_1

    .line 547
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 548
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 549
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f04005a

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 550
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 551
    invoke-virtual {v0, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 552
    const v7, 0x7f0e022a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->radio_mon:Landroid/widget/CheckBox;

    .line 553
    const v7, 0x7f0e022b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->radio_tue:Landroid/widget/CheckBox;

    .line 554
    const v7, 0x7f0e022c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->radio_wen:Landroid/widget/CheckBox;

    .line 555
    const v7, 0x7f0e022d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->radio_thu:Landroid/widget/CheckBox;

    .line 556
    const v7, 0x7f0e022e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->radio_fra:Landroid/widget/CheckBox;

    .line 557
    const v7, 0x7f0e022f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->radio_sat:Landroid/widget/CheckBox;

    .line 558
    const v7, 0x7f0e0230

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->radio_sun:Landroid/widget/CheckBox;

    .line 559
    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->radioArray:[Landroid/widget/CheckBox;

    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->radio_sun:Landroid/widget/CheckBox;

    aput-object v8, v7, v9

    .line 560
    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->radioArray:[Landroid/widget/CheckBox;

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->radio_mon:Landroid/widget/CheckBox;

    aput-object v9, v7, v8

    .line 561
    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->radioArray:[Landroid/widget/CheckBox;

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->radio_tue:Landroid/widget/CheckBox;

    aput-object v9, v7, v8

    .line 562
    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->radioArray:[Landroid/widget/CheckBox;

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->radio_wen:Landroid/widget/CheckBox;

    aput-object v9, v7, v8

    .line 563
    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->radioArray:[Landroid/widget/CheckBox;

    const/4 v8, 0x4

    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->radio_thu:Landroid/widget/CheckBox;

    aput-object v9, v7, v8

    .line 564
    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->radioArray:[Landroid/widget/CheckBox;

    const/4 v8, 0x5

    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->radio_fra:Landroid/widget/CheckBox;

    aput-object v9, v7, v8

    .line 565
    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->radioArray:[Landroid/widget/CheckBox;

    const/4 v8, 0x6

    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->radio_sat:Landroid/widget/CheckBox;

    aput-object v9, v7, v8

    .line 566
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->radioArray:[Landroid/widget/CheckBox;

    array-length v7, v7

    if-ge v4, v7, :cond_0

    .line 568
    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->radioArray:[Landroid/widget/CheckBox;

    aget-object v7, v7, v4

    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->array_check:[Z

    aget-boolean v8, v8, v4

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 566
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 571
    :cond_0
    const v7, 0x7f0e021d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 572
    .local v3, "dialog_sure":Landroid/widget/RelativeLayout;
    const v7, 0x7f0e021c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 573
    .local v2, "dialog_cancle":Landroid/widget/RelativeLayout;
    new-instance v7, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity$3;

    invoke-direct {v7, p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity$3;-><init>(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;Landroid/app/Dialog;)V

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    new-instance v7, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity$4;

    invoke-direct {v7, p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity$4;-><init>(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;Landroid/app/Dialog;)V

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 598
    .end local v2    # "dialog_cancle":Landroid/widget/RelativeLayout;
    .end local v3    # "dialog_sure":Landroid/widget/RelativeLayout;
    .end local v4    # "i":I
    .end local v5    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    return-void
.end method

.method private updateAlarmString()V
    .locals 15

    .prologue
    .line 481
    const-string v1, ""

    .line 482
    .local v1, "alarmHour":Ljava/lang/String;
    const-string v2, ""

    .line 484
    .local v2, "alarmMinute":Ljava/lang/String;
    iget v13, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->wheelView_hour:I

    const/16 v14, 0x9

    if-le v13, v14, :cond_1

    .line 485
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget v14, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->wheelView_hour:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 489
    :goto_0
    iget v13, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->wheelView_minutes:I

    const/16 v14, 0x9

    if-le v13, v14, :cond_2

    .line 490
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget v14, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->wheelView_minutes:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 496
    :goto_1
    new-instance v11, Landroid/text/format/Time;

    invoke-direct {v11}, Landroid/text/format/Time;-><init>()V

    .line 497
    .local v11, "time":Landroid/text/format/Time;
    invoke-virtual {v11}, Landroid/text/format/Time;->setToNow()V

    .line 498
    iget v5, v11, Landroid/text/format/Time;->hour:I

    .line 499
    .local v5, "current_hour":I
    iget v7, v11, Landroid/text/format/Time;->minute:I

    .line 501
    .local v7, "current_minute":I
    iget v13, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->wheelView_hour:I

    mul-int/lit8 v13, v13, 0x3c

    iget v14, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->wheelView_minutes:I

    add-int v3, v13, v14

    .line 502
    .local v3, "alarm_in_minute":I
    mul-int/lit8 v13, v5, 0x3c

    add-int v6, v13, v7

    .line 504
    .local v6, "current_in_minute":I
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    .line 506
    .local v12, "today":Ljava/util/Date;
    sget-object v13, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat6:Ljava/text/SimpleDateFormat;

    invoke-virtual {v13, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 508
    .local v10, "strDate":Ljava/lang/String;
    if-lt v6, v3, :cond_0

    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->getWeekSting()Ljava/lang/String;

    move-result-object v13

    const-string v14, "0000000"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 510
    const/4 v13, 0x5

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getDateForOffset(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v9

    .line 511
    .local v9, "showDate":Ljava/util/Date;
    sget-object v13, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat6:Ljava/text/SimpleDateFormat;

    invoke-virtual {v13, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 514
    .end local v9    # "showDate":Ljava/util/Date;
    :cond_0
    iget-object v13, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->strAlarm:Ljava/lang/String;

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 515
    .local v4, "alarm_number":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "00"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 516
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->getWeekSting()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 520
    .local v0, "alarm":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "edit alarm = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 522
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 523
    .local v8, "intent":Landroid/content/Intent;
    const-string v13, "alarm"

    invoke-virtual {v8, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    iget-boolean v13, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->bAddAlarm:Z

    if-eqz v13, :cond_3

    .line 525
    const/4 v13, 0x2

    invoke-virtual {p0, v13, v8}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->setResult(ILandroid/content/Intent;)V

    .line 530
    :goto_2
    return-void

    .line 487
    .end local v0    # "alarm":Ljava/lang/String;
    .end local v3    # "alarm_in_minute":I
    .end local v4    # "alarm_number":I
    .end local v5    # "current_hour":I
    .end local v6    # "current_in_minute":I
    .end local v7    # "current_minute":I
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v10    # "strDate":Ljava/lang/String;
    .end local v11    # "time":Landroid/text/format/Time;
    .end local v12    # "today":Ljava/util/Date;
    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "0"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->wheelView_hour:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 492
    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "0"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->wheelView_minutes:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 527
    .restart local v0    # "alarm":Ljava/lang/String;
    .restart local v3    # "alarm_in_minute":I
    .restart local v4    # "alarm_number":I
    .restart local v5    # "current_hour":I
    .restart local v6    # "current_in_minute":I
    .restart local v7    # "current_minute":I
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v10    # "strDate":Ljava/lang/String;
    .restart local v11    # "time":Landroid/text/format/Time;
    .restart local v12    # "today":Ljava/util/Date;
    :cond_3
    const/4 v13, 0x3

    invoke-virtual {p0, v13, v8}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_2
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 393
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 409
    :goto_0
    :pswitch_0
    return-void

    .line 395
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->boxCheckChange(I)V

    goto :goto_0

    .line 398
    :pswitch_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->boxCheckChange(I)V

    goto :goto_0

    .line 401
    :pswitch_3
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->boxCheckChange(I)V

    goto :goto_0

    .line 404
    :pswitch_4
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->boxCheckChange(I)V

    goto :goto_0

    .line 393
    :pswitch_data_0
    .packed-switch 0x7f0e007b
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 360
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 389
    :goto_0
    return-void

    .line 362
    :sswitch_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_checkbox_once:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 365
    :sswitch_1
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_checkbox_work_days:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 368
    :sswitch_2
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_checkbox_everyday:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 371
    :sswitch_3
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->alram_checkbox_cus:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 372
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->showMultDialog()V

    goto :goto_0

    .line 375
    :sswitch_4
    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->setResult(I)V

    .line 376
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->finish()V

    goto :goto_0

    .line 380
    :sswitch_5
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->updateAlarmString()V

    .line 381
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->finish()V

    goto :goto_0

    .line 384
    :sswitch_6
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->finish()V

    goto :goto_0

    .line 360
    :sswitch_data_0
    .sparse-switch
        0x7f0e0070 -> :sswitch_6
        0x7f0e0076 -> :sswitch_5
        0x7f0e007a -> :sswitch_0
        0x7f0e007c -> :sswitch_1
        0x7f0e007e -> :sswitch_2
        0x7f0e0080 -> :sswitch_3
        0x7f0e0082 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->initView()V

    .line 79
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->initData()V

    .line 81
    return-void
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 72
    const v0, 0x7f04001c

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->setContentView(I)V

    .line 73
    return-void
.end method
