.class Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;
.super Ljava/lang/Object;
.source "HistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemEntity"
.end annotation


# instance fields
.field public day_dis:Ljava/lang/String;

.field public day_dur:Ljava/lang/String;

.field public heart_rate:Ljava/lang/String;

.field public kcal:Ljava/lang/String;

.field public month:Ljava/lang/String;

.field public month_dis:Ljava/lang/String;

.field public speed:Ljava/lang/String;

.field public sport_long:Ljava/lang/String;

.field public tag:Ljava/lang/Object;

.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity;

.field public time:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>(Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity;
    .param p2, "type"    # I
    .param p3, "month"    # Ljava/lang/String;
    .param p4, "month_dis"    # Ljava/lang/String;
    .param p5, "day_dis"    # Ljava/lang/String;
    .param p6, "day_dur"    # Ljava/lang/String;
    .param p7, "time"    # Ljava/lang/String;
    .param p8, "speed"    # Ljava/lang/String;
    .param p9, "kcal"    # Ljava/lang/String;
    .param p10, "heart_rate"    # Ljava/lang/String;
    .param p11, "sport_long"    # Ljava/lang/String;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput p2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;->type:I

    .line 229
    iput-object p3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;->month:Ljava/lang/String;

    .line 230
    iput-object p4, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;->month_dis:Ljava/lang/String;

    .line 231
    iput-object p5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;->day_dis:Ljava/lang/String;

    .line 232
    iput-object p6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;->day_dur:Ljava/lang/String;

    .line 233
    iput-object p7, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;->time:Ljava/lang/String;

    .line 234
    iput-object p8, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;->speed:Ljava/lang/String;

    .line 235
    iput-object p9, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;->kcal:Ljava/lang/String;

    .line 236
    iput-object p10, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;->heart_rate:Ljava/lang/String;

    .line 237
    iput-object p11, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;->sport_long:Ljava/lang/String;

    .line 239
    return-void
.end method


# virtual methods
.method public getSpeed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;->speed:Ljava/lang/String;

    return-object v0
.end method

.method public setSpeed(Ljava/lang/String;)V
    .locals 0
    .param p1, "speed"    # Ljava/lang/String;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;->speed:Ljava/lang/String;

    .line 224
    return-void
.end method
