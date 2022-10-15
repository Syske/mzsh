.class Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$1;
.super Ljava/lang/Object;
.source "AlarmActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter;

.field final synthetic val$alarmStringItem:[Ljava/lang/String;

.field final synthetic val$alarms:Ljava/util/List;

.field final synthetic val$finalHolder:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$Holder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter;Ljava/util/List;I[Ljava/lang/String;Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$Holder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$1;->this$1:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter;

    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$1;->val$alarms:Ljava/util/List;

    iput p3, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$1;->val$position:I

    iput-object p4, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$1;->val$alarmStringItem:[Ljava/lang/String;

    iput-object p5, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$1;->val$finalHolder:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$Holder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 24
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$1;->val$alarms:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$1;->val$position:I

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 439
    .local v5, "alarm":Ljava/lang/String;
    const-string v20, ","

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 440
    .local v15, "split":[Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v21, 0x3

    aget-object v21, v15, v21

    const/16 v22, 0x0

    const/16 v23, 0x7

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v20, 0x1

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    const-string v20, "1"

    :goto_0
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 443
    .local v16, "split3":Ljava/lang/String;
    const-string v20, "00000001"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 445
    new-instance v18, Landroid/text/format/Time;

    invoke-direct/range {v18 .. v18}, Landroid/text/format/Time;-><init>()V

    .line 446
    .local v18, "time":Landroid/text/format/Time;
    invoke-virtual/range {v18 .. v18}, Landroid/text/format/Time;->setToNow()V

    .line 447
    move-object/from16 v0, v18

    iget v11, v0, Landroid/text/format/Time;->hour:I

    .line 448
    .local v11, "current_hour":I
    move-object/from16 v0, v18

    iget v13, v0, Landroid/text/format/Time;->minute:I

    .line 450
    .local v13, "current_minute":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$1;->val$alarmStringItem:[Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget-object v20, v20, v21

    const/16 v21, 0x8

    const/16 v22, 0xa

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 451
    .local v6, "alarmHour":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$1;->val$alarmStringItem:[Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget-object v20, v20, v21

    const/16 v21, 0xa

    const/16 v22, 0xc

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 452
    .local v7, "alarmMinute":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 453
    .local v8, "alarm_hour":I
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 455
    .local v10, "alarm_minute":I
    mul-int/lit8 v20, v8, 0x3c

    add-int v9, v20, v10

    .line 456
    .local v9, "alarm_in_minute":I
    mul-int/lit8 v20, v11, 0x3c

    add-int v12, v20, v13

    .line 458
    .local v12, "current_in_minute":I
    new-instance v19, Ljava/util/Date;

    invoke-direct/range {v19 .. v19}, Ljava/util/Date;-><init>()V

    .line 460
    .local v19, "today":Ljava/util/Date;
    sget-object v20, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat6:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    .line 462
    .local v17, "strDate":Ljava/lang/String;
    if-le v12, v9, :cond_0

    .line 463
    const/16 v20, 0x5

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getDateForOffset(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v14

    .line 464
    .local v14, "showDate":Ljava/util/Date;
    sget-object v20, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat6:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    .line 465
    const/16 v20, 0x4

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v15, v20

    .line 466
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "once alarm open time = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x4

    aget-object v21, v15, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 471
    .end local v6    # "alarmHour":Ljava/lang/String;
    .end local v7    # "alarmMinute":Ljava/lang/String;
    .end local v8    # "alarm_hour":I
    .end local v9    # "alarm_in_minute":I
    .end local v10    # "alarm_minute":I
    .end local v11    # "current_hour":I
    .end local v12    # "current_in_minute":I
    .end local v13    # "current_minute":I
    .end local v14    # "showDate":Ljava/util/Date;
    .end local v17    # "strDate":Ljava/lang/String;
    .end local v18    # "time":Landroid/text/format/Time;
    .end local v19    # "today":Ljava/util/Date;
    :cond_0
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v21, 0x0

    aget-object v21, v15, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x1

    aget-object v21, v15, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x2

    aget-object v21, v15, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x4

    aget-object v21, v15, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 472
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "change alarm = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$1;->val$alarms:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$1;->val$position:I

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v0, v1, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$1;->this$1:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$1;->val$position:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->saveAlarm(I)V

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$1;->this$1:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$1;->val$finalHolder:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$Holder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$Holder;->alarm_time:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$1;->val$finalHolder:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$Holder;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$Holder;->alarm_time_day:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$1;->val$finalHolder:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$Holder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$Holder;->alarm_time_remain:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->access$300(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    .line 477
    return-void

    .line 440
    .end local v16    # "split3":Ljava/lang/String;
    :cond_1
    const-string v20, "0"

    goto/16 :goto_0
.end method
