.class Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity$2;
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
    .line 193
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->finish()V

    .line 197
    return-void
.end method
