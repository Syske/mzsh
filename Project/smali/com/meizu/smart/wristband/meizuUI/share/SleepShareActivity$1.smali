.class Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity$1;
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
    .line 141
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->finish()V

    .line 145
    return-void
.end method
