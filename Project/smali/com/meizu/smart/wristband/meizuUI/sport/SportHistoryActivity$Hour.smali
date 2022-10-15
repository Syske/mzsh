.class Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity$Hour;
.super Ljava/lang/Object;
.source "SportHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Hour"
.end annotation


# instance fields
.field public dayCount:I

.field public dis:Ljava/lang/String;

.field public dis_o2:Ljava/lang/String;

.field public dur:Ljava/lang/String;

.field public dur_o2:Ljava/lang/String;

.field public step:Ljava/lang/String;

.field public step_o2:Ljava/lang/String;

.field public tag:Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;

.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;

    .prologue
    .line 719
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity$Hour;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
