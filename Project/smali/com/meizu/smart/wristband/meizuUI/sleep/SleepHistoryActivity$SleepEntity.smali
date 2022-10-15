.class Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity$SleepEntity;
.super Ljava/lang/Object;
.source "SleepHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SleepEntity"
.end annotation


# instance fields
.field public deep:I

.field public dream:I

.field public light:I

.field public sober:I

.field public tag:Lcom/meizu/smart/wristband/models/database/entity/Sleep;

.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;Lcom/meizu/smart/wristband/models/database/entity/Sleep;IIII)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;
    .param p2, "sleep"    # Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    .param p3, "deep"    # I
    .param p4, "light"    # I
    .param p5, "sober"    # I
    .param p6, "dream"    # I

    .prologue
    .line 821
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity$SleepEntity;->this$0:Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 822
    if-gez p3, :cond_0

    .line 823
    const/4 p3, 0x0

    .line 825
    :cond_0
    if-gez p4, :cond_1

    .line 826
    const/4 p4, 0x0

    .line 828
    :cond_1
    if-gez p5, :cond_2

    .line 829
    const/4 p5, 0x0

    .line 831
    :cond_2
    if-gez p6, :cond_3

    .line 832
    const/4 p6, 0x0

    .line 834
    :cond_3
    iput p3, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity$SleepEntity;->deep:I

    .line 835
    iput p4, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity$SleepEntity;->light:I

    .line 836
    iput p5, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity$SleepEntity;->sober:I

    .line 837
    iput p6, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity$SleepEntity;->dream:I

    .line 838
    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity$SleepEntity;->tag:Lcom/meizu/smart/wristband/models/database/entity/Sleep;

    .line 839
    return-void
.end method
