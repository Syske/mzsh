.class Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity$Hour;
.super Ljava/lang/Object;
.source "SportHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Hour"
.end annotation


# instance fields
.field public dis:Ljava/lang/String;

.field public dis_o2:Ljava/lang/String;

.field public dur:Ljava/lang/String;

.field public dur_o2:Ljava/lang/String;

.field public step:Ljava/lang/String;

.field public step_o2:Ljava/lang/String;

.field public tag:Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;

.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity$Hour;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
