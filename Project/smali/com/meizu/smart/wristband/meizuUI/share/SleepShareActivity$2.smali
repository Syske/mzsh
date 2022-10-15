.class Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity$2;
.super Ljava/lang/Object;
.source "SleepShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void
.end method
