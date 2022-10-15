.class Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$Holder;
.super Ljava/lang/Object;
.source "AlarmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Holder"
.end annotation


# instance fields
.field alarm_cb:Landroid/widget/CheckBox;

.field alarm_time:Landroid/widget/TextView;

.field alarm_time_day:Landroid/widget/TextView;

.field alarm_time_remain:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter$Holder;->this$1:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
