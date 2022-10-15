.class Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity$1;
.super Ljava/lang/Object;
.source "HeartrateShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->finish()V

    .line 245
    return-void
.end method
