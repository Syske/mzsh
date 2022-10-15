.class Lcom/tencent/bugly/proguard/aj$a;
.super Ljava/lang/Thread;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/bugly/proguard/aj;

.field private b:I

.field private c:Lcom/tencent/bugly/proguard/ai;

.field private d:Ljava/lang/String;

.field private e:Landroid/content/ContentValues;

.field private f:Z

.field private g:[Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:[Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:[Ljava/lang/String;

.field private p:I

.field private q:Ljava/lang/String;

.field private r:[B


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/aj;ILcom/tencent/bugly/proguard/ai;)V
    .locals 0

    .prologue
    .line 762
    iput-object p1, p0, Lcom/tencent/bugly/proguard/aj$a;->a:Lcom/tencent/bugly/proguard/aj;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 763
    iput p2, p0, Lcom/tencent/bugly/proguard/aj$a;->b:I

    .line 764
    iput-object p3, p0, Lcom/tencent/bugly/proguard/aj$a;->c:Lcom/tencent/bugly/proguard/ai;

    .line 765
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 799
    iput p1, p0, Lcom/tencent/bugly/proguard/aj$a;->p:I

    .line 800
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 803
    iput p1, p0, Lcom/tencent/bugly/proguard/aj$a;->p:I

    .line 804
    iput-object p2, p0, Lcom/tencent/bugly/proguard/aj$a;->q:Ljava/lang/String;

    .line 805
    return-void
.end method

.method public a(ILjava/lang/String;[B)V
    .locals 0

    .prologue
    .line 793
    iput p1, p0, Lcom/tencent/bugly/proguard/aj$a;->p:I

    .line 794
    iput-object p2, p0, Lcom/tencent/bugly/proguard/aj$a;->q:Ljava/lang/String;

    .line 795
    iput-object p3, p0, Lcom/tencent/bugly/proguard/aj$a;->r:[B

    .line 796
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0

    .prologue
    .line 768
    iput-object p1, p0, Lcom/tencent/bugly/proguard/aj$a;->d:Ljava/lang/String;

    .line 769
    iput-object p2, p0, Lcom/tencent/bugly/proguard/aj$a;->e:Landroid/content/ContentValues;

    .line 770
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 787
    iput-object p1, p0, Lcom/tencent/bugly/proguard/aj$a;->d:Ljava/lang/String;

    .line 788
    iput-object p2, p0, Lcom/tencent/bugly/proguard/aj$a;->n:Ljava/lang/String;

    .line 789
    iput-object p3, p0, Lcom/tencent/bugly/proguard/aj$a;->o:[Ljava/lang/String;

    .line 790
    return-void
.end method

.method public a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 775
    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/aj$a;->f:Z

    .line 776
    iput-object p2, p0, Lcom/tencent/bugly/proguard/aj$a;->d:Ljava/lang/String;

    .line 777
    iput-object p3, p0, Lcom/tencent/bugly/proguard/aj$a;->g:[Ljava/lang/String;

    .line 778
    iput-object p4, p0, Lcom/tencent/bugly/proguard/aj$a;->h:Ljava/lang/String;

    .line 779
    iput-object p5, p0, Lcom/tencent/bugly/proguard/aj$a;->i:[Ljava/lang/String;

    .line 780
    iput-object p6, p0, Lcom/tencent/bugly/proguard/aj$a;->j:Ljava/lang/String;

    .line 781
    iput-object p7, p0, Lcom/tencent/bugly/proguard/aj$a;->k:Ljava/lang/String;

    .line 782
    iput-object p8, p0, Lcom/tencent/bugly/proguard/aj$a;->l:Ljava/lang/String;

    .line 783
    iput-object p9, p0, Lcom/tencent/bugly/proguard/aj$a;->m:Ljava/lang/String;

    .line 784
    return-void
.end method

.method public run()V
    .locals 11

    .prologue
    .line 809
    iget v0, p0, Lcom/tencent/bugly/proguard/aj$a;->b:I

    packed-switch v0, :pswitch_data_0

    .line 832
    :goto_0
    return-void

    .line 811
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj$a;->a:Lcom/tencent/bugly/proguard/aj;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/aj$a;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/aj$a;->e:Landroid/content/ContentValues;

    iget-object v3, p0, Lcom/tencent/bugly/proguard/aj$a;->c:Lcom/tencent/bugly/proguard/ai;

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/aj;->a(Lcom/tencent/bugly/proguard/aj;Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/ai;)J

    goto :goto_0

    .line 814
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj$a;->a:Lcom/tencent/bugly/proguard/aj;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/aj$a;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/aj$a;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/bugly/proguard/aj$a;->o:[Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/bugly/proguard/aj$a;->c:Lcom/tencent/bugly/proguard/ai;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/bugly/proguard/aj;->a(Lcom/tencent/bugly/proguard/aj;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/ai;)I

    goto :goto_0

    .line 817
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj$a;->a:Lcom/tencent/bugly/proguard/aj;

    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/aj$a;->f:Z

    iget-object v2, p0, Lcom/tencent/bugly/proguard/aj$a;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/bugly/proguard/aj$a;->g:[Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/bugly/proguard/aj$a;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/bugly/proguard/aj$a;->i:[Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/bugly/proguard/aj$a;->j:Ljava/lang/String;

    iget-object v7, p0, Lcom/tencent/bugly/proguard/aj$a;->k:Ljava/lang/String;

    iget-object v8, p0, Lcom/tencent/bugly/proguard/aj$a;->l:Ljava/lang/String;

    iget-object v9, p0, Lcom/tencent/bugly/proguard/aj$a;->m:Ljava/lang/String;

    iget-object v10, p0, Lcom/tencent/bugly/proguard/aj$a;->c:Lcom/tencent/bugly/proguard/ai;

    invoke-static/range {v0 .. v10}, Lcom/tencent/bugly/proguard/aj;->a(Lcom/tencent/bugly/proguard/aj;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/ai;)Landroid/database/Cursor;

    goto :goto_0

    .line 821
    :pswitch_3
    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj$a;->a:Lcom/tencent/bugly/proguard/aj;

    iget v1, p0, Lcom/tencent/bugly/proguard/aj$a;->p:I

    iget-object v2, p0, Lcom/tencent/bugly/proguard/aj$a;->q:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/bugly/proguard/aj$a;->r:[B

    iget-object v4, p0, Lcom/tencent/bugly/proguard/aj$a;->c:Lcom/tencent/bugly/proguard/ai;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/bugly/proguard/aj;->a(Lcom/tencent/bugly/proguard/aj;ILjava/lang/String;[BLcom/tencent/bugly/proguard/ai;)Z

    goto :goto_0

    .line 824
    :pswitch_4
    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj$a;->a:Lcom/tencent/bugly/proguard/aj;

    iget v1, p0, Lcom/tencent/bugly/proguard/aj$a;->p:I

    iget-object v2, p0, Lcom/tencent/bugly/proguard/aj$a;->c:Lcom/tencent/bugly/proguard/ai;

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/proguard/aj;->a(Lcom/tencent/bugly/proguard/aj;ILcom/tencent/bugly/proguard/ai;)Ljava/util/Map;

    goto :goto_0

    .line 827
    :pswitch_5
    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj$a;->a:Lcom/tencent/bugly/proguard/aj;

    iget v1, p0, Lcom/tencent/bugly/proguard/aj$a;->p:I

    iget-object v2, p0, Lcom/tencent/bugly/proguard/aj$a;->q:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/bugly/proguard/aj$a;->c:Lcom/tencent/bugly/proguard/ai;

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/aj;->a(Lcom/tencent/bugly/proguard/aj;ILjava/lang/String;Lcom/tencent/bugly/proguard/ai;)Z

    goto :goto_0

    .line 809
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
