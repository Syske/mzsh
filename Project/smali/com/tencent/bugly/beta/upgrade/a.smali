.class public Lcom/tencent/bugly/beta/upgrade/a;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Lcom/tencent/bugly/proguard/ao;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:[Ljava/lang/Object;

.field public d:Z


# direct methods
.method public varargs constructor <init>(II[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/beta/upgrade/a;->d:Z

    .line 44
    iput p1, p0, Lcom/tencent/bugly/beta/upgrade/a;->a:I

    .line 45
    iput p2, p0, Lcom/tencent/bugly/beta/upgrade/a;->b:I

    .line 46
    iput-object p3, p0, Lcom/tencent/bugly/beta/upgrade/a;->c:[Ljava/lang/Object;

    .line 47
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public declared-synchronized a(ILcom/tencent/bugly/proguard/bj;JJZLjava/lang/String;)V
    .locals 7

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/beta/upgrade/a;->d:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/tencent/bugly/beta/upgrade/a;->b:I

    if-ne p1, v0, :cond_1

    .line 58
    const-string v1, "upload %s:[%d] [sended %d] [recevied %d]"

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz p7, :cond_2

    const-string v0, "succ"

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x1

    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    .line 58
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 61
    iget v0, p0, Lcom/tencent/bugly/beta/upgrade/a;->a:I

    packed-switch v0, :pswitch_data_0

    .line 131
    :cond_0
    :goto_1
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/beta/upgrade/a;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_1
    :goto_2
    monitor-exit p0

    return-void

    .line 58
    :cond_2
    :try_start_1
    const-string v0, "err"

    goto :goto_0

    .line 64
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/a;->c:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 65
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/a;->c:[Ljava/lang/Object;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 66
    iget v0, p0, Lcom/tencent/bugly/beta/upgrade/a;->b:I

    const/16 v3, 0x324

    if-ne v0, v3, :cond_1

    .line 71
    const/4 v3, 0x0

    .line 72
    const/4 v4, 0x0

    .line 73
    if-eqz p7, :cond_a

    if-eqz p2, :cond_a

    .line 74
    iget-object v0, p2, Lcom/tencent/bugly/proguard/bj;->c:[B

    .line 75
    const-class v5, Lcom/tencent/bugly/proguard/aa;

    .line 76
    invoke-static {v0, v5}, Lcom/tencent/bugly/proguard/am;->a([BLjava/lang/Class;)Lcom/tencent/bugly/proguard/m;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/aa;

    .line 78
    if-eqz v0, :cond_a

    .line 79
    iget-object v3, v0, Lcom/tencent/bugly/proguard/aa;->a:Lcom/tencent/bugly/proguard/bl;

    .line 80
    iget-object v4, v0, Lcom/tencent/bugly/proguard/aa;->b:Lcom/tencent/bugly/proguard/y;

    move-object v0, v3

    .line 83
    :goto_3
    sget-object v3, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    invoke-virtual {v3, v0}, Lcom/tencent/bugly/beta/upgrade/c;->a(Lcom/tencent/bugly/proguard/bl;)V

    .line 84
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/a;->c:[Ljava/lang/Object;

    const/4 v3, 0x2

    aget-object v0, v0, v3

    check-cast v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    .line 85
    if-eqz v4, :cond_3

    move-object v0, v4

    .line 87
    :goto_4
    if-eqz v0, :cond_7

    .line 88
    iget v0, v0, Lcom/tencent/bugly/proguard/y;->p:I

    packed-switch v0, :pswitch_data_1

    .line 99
    const-string v0, "unexpected updatetype"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 134
    :catch_0
    move-exception v0

    .line 135
    :try_start_2
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 136
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 85
    :cond_3
    if-eqz v0, :cond_4

    :try_start_3
    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    .line 90
    :pswitch_2
    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    if-eqz p7, :cond_5

    const/4 v3, 0x0

    :goto_5
    move-object v5, p8

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/beta/upgrade/c;->a(ZZILcom/tencent/bugly/proguard/y;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/4 v3, -0x1

    goto :goto_5

    .line 96
    :pswitch_3
    sget-object v1, Lcom/tencent/bugly/proguard/q;->a:Lcom/tencent/bugly/proguard/q;

    if-eqz p7, :cond_6

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {v1, v0, v4}, Lcom/tencent/bugly/proguard/q;->a(ILcom/tencent/bugly/proguard/y;)V

    goto/16 :goto_1

    :cond_6
    const/4 v0, -0x1

    goto :goto_6

    .line 102
    :cond_7
    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    if-eqz p7, :cond_8

    const/4 v3, 0x0

    :goto_7
    const/4 v4, 0x0

    move-object v5, p8

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/beta/upgrade/c;->a(ZZILcom/tencent/bugly/proguard/y;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const/4 v3, -0x1

    goto :goto_7

    .line 110
    :pswitch_4
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/a;->c:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lcom/tencent/bugly/proguard/x;

    .line 112
    iget v0, p0, Lcom/tencent/bugly/beta/upgrade/a;->b:I

    const/16 v1, 0x323

    if-ne v0, v1, :cond_1

    .line 117
    if-eqz p7, :cond_0

    .line 118
    if-eqz p2, :cond_9

    .line 119
    iget-object v0, p2, Lcom/tencent/bugly/proguard/bj;->c:[B

    const-class v1, Lcom/tencent/bugly/proguard/aa;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/am;->a([BLjava/lang/Class;)Lcom/tencent/bugly/proguard/m;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/aa;

    .line 120
    if-eqz v0, :cond_9

    .line 121
    sget-object v1, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/aa;->a:Lcom/tencent/bugly/proguard/bl;

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/beta/upgrade/c;->a(Lcom/tencent/bugly/proguard/bl;)V

    .line 124
    :cond_9
    sget-object v0, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/p;->b()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :cond_a
    move-object v0, v3

    goto/16 :goto_3

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
    .end packed-switch

    .line 88
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
