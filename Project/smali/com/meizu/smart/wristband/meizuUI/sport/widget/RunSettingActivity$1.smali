.class Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity$1;
.super Ljava/lang/Object;
.source "RunSettingActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 107
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;

    invoke-static {v0, p2}, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->access$002(Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;Z)Z

    .line 108
    return-void
.end method
