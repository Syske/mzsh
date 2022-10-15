.class Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$4;
.super Ljava/lang/Object;
.source "SportRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    .prologue
    .line 555
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$4;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 558
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$4;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$4;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->access$600(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->access$700(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    return-void
.end method
