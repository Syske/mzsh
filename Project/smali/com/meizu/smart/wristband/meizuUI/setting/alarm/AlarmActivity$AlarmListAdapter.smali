.class Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AlarmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$Holder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;


# direct methods
.method private constructor <init>(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 382
    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;
    .param p2, "x1"    # Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$1;

    .prologue
    .line 380
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter;-><init>(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 391
    sget-object v0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->alarmsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 396
    sget-object v0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->alarmsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 401
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 407
    new-instance v6, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$Holder;

    invoke-direct {v6, p0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$Holder;-><init>(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter;)V

    .line 409
    .local v6, "holder":Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$Holder;
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;

    const v1, 0x7f04004d

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 410
    const v0, 0x7f0e0200

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$Holder;->alarm_time:Landroid/widget/TextView;

    .line 411
    const v0, 0x7f0e0201

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$Holder;->alarm_time_day:Landroid/widget/TextView;

    .line 412
    const v0, 0x7f0e0202

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$Holder;->alarm_time_remain:Landroid/widget/TextView;

    .line 413
    const v0, 0x7f0e0203

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v6, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$Holder;->alarm_cb:Landroid/widget/CheckBox;

    .line 414
    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 420
    sget-object v2, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->alarmsList:Ljava/util/List;

    .line 422
    .local v2, "alarms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 423
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 424
    .local v4, "alarmStringItem":[Ljava/lang/String;
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;

    iget-object v1, v6, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$Holder;->alarm_time:Landroid/widget/TextView;

    iget-object v3, v6, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$Holder;->alarm_time_day:Landroid/widget/TextView;

    iget-object v7, v6, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$Holder;->alarm_time_remain:Landroid/widget/TextView;

    invoke-static {v0, v4, v1, v3, v7}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;[Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 426
    const-string v0, "1"

    const/4 v1, 0x3

    aget-object v1, v4, v1

    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, v6, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$Holder;->alarm_cb:Landroid/widget/CheckBox;

    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 428
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;

    iget-object v1, v6, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$Holder;->alarm_time:Landroid/widget/TextView;

    iget-object v3, v6, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$Holder;->alarm_time_day:Landroid/widget/TextView;

    iget-object v7, v6, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$Holder;->alarm_time_remain:Landroid/widget/TextView;

    invoke-static {v0, v1, v3, v7, v9}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->access$300(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    .line 434
    :goto_0
    move-object v5, v6

    .line 435
    .local v5, "finalHolder":Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$Holder;
    iget-object v7, v6, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$Holder;->alarm_cb:Landroid/widget/CheckBox;

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$1;

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter;Ljava/util/List;I[Ljava/lang/String;Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$Holder;)V

    invoke-virtual {v7, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 480
    .end local v4    # "alarmStringItem":[Ljava/lang/String;
    .end local v5    # "finalHolder":Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$Holder;
    :cond_0
    return-object p2

    .line 430
    .restart local v4    # "alarmStringItem":[Ljava/lang/String;
    :cond_1
    iget-object v0, v6, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$Holder;->alarm_cb:Landroid/widget/CheckBox;

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 431
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;

    iget-object v1, v6, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$Holder;->alarm_time:Landroid/widget/TextView;

    iget-object v3, v6, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$Holder;->alarm_time_day:Landroid/widget/TextView;

    iget-object v7, v6, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$Holder;->alarm_time_remain:Landroid/widget/TextView;

    invoke-static {v0, v1, v3, v7, v8}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->access$300(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    goto :goto_0
.end method
