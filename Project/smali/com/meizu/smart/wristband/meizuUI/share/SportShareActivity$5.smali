.class Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity$5;
.super Ljava/lang/Object;
.source "SportShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/sharesdk/twitter/Twitter;->NAME:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method
