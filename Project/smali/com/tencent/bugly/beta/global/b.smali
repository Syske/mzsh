.class public Lcom/tencent/bugly/beta/global/b;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final a:I

.field final b:[Ljava/lang/Object;


# direct methods
.method public varargs constructor <init>(I[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/tencent/bugly/beta/global/b;->a:I

    .line 43
    iput-object p2, p0, Lcom/tencent/bugly/beta/global/b;->b:[Ljava/lang/Object;

    .line 44
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 15
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 49
    :try_start_0
    iget v1, p0, Lcom/tencent/bugly/beta/global/b;->a:I

    packed-switch v1, :pswitch_data_0

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 51
    :pswitch_0
    iget-object v1, p0, Lcom/tencent/bugly/beta/global/b;->b:[Ljava/lang/Object;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-gtz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/tencent/bugly/beta/global/b;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 53
    const-string v1, "BetaAct closed by empty view"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    :catch_0
    move-exception v1

    .line 149
    invoke-static {v1}, Lcom/tencent/bugly/proguard/as;->b(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 150
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 59
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/tencent/bugly/beta/global/b;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Lcom/tencent/bugly/beta/ui/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/beta/ui/a;->a()V

    goto :goto_0

    .line 64
    :pswitch_2
    iget-object v1, p0, Lcom/tencent/bugly/beta/global/b;->b:[Ljava/lang/Object;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/tencent/bugly/beta/global/b;->b:[Ljava/lang/Object;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    check-cast v1, Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-virtual {v1}, Lcom/tencent/bugly/beta/download/DownloadTask;->download()V

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/tencent/bugly/beta/global/b;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Lcom/tencent/bugly/beta/ui/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/beta/ui/a;->a()V

    goto :goto_0

    .line 72
    :pswitch_3
    iget-object v1, p0, Lcom/tencent/bugly/beta/global/b;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    move-object v0, v1

    check-cast v0, Lcom/tencent/bugly/beta/ui/h;

    move-object v12, v0

    .line 74
    iget-object v1, v12, Lcom/tencent/bugly/beta/ui/h;->p:Lcom/tencent/bugly/beta/download/DownloadTask;

    .line 75
    iget-object v13, v12, Lcom/tencent/bugly/beta/ui/h;->o:Lcom/tencent/bugly/proguard/y;

    .line 77
    invoke-static {v1}, Lcom/tencent/bugly/beta/download/BetaReceiver;->addTask(Lcom/tencent/bugly/beta/download/DownloadTask;)V

    .line 78
    iget-object v2, v12, Lcom/tencent/bugly/beta/ui/h;->q:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 79
    iget-object v2, v12, Lcom/tencent/bugly/beta/ui/h;->q:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 81
    :cond_2
    invoke-virtual {v1}, Lcom/tencent/bugly/beta/download/DownloadTask;->getStatus()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    sget-object v2, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v2, v2, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    .line 82
    invoke-virtual {v1}, Lcom/tencent/bugly/beta/download/DownloadTask;->getSaveFile()Ljava/io/File;

    move-result-object v3

    iget-object v4, v13, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    iget-object v4, v4, Lcom/tencent/bugly/proguard/u;->a:Ljava/lang/String;

    .line 81
    invoke-static {v2, v3, v4}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 85
    sget-object v14, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;

    new-instance v1, Lcom/tencent/bugly/proguard/w;

    const-string v2, "install"

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    iget-object v8, v13, Lcom/tencent/bugly/proguard/y;->e:Lcom/tencent/bugly/proguard/v;

    iget-object v9, v13, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    iget v10, v13, Lcom/tencent/bugly/proguard/y;->p:I

    const/4 v11, 0x0

    invoke-direct/range {v1 .. v11}, Lcom/tencent/bugly/proguard/w;-><init>(Ljava/lang/String;JBJLcom/tencent/bugly/proguard/v;Ljava/lang/String;ILjava/util/Map;)V

    .line 85
    invoke-virtual {v14, v1}, Lcom/tencent/bugly/proguard/p;->a(Lcom/tencent/bugly/proguard/w;)Z

    .line 103
    :goto_1
    iget-byte v1, v13, Lcom/tencent/bugly/proguard/y;->g:B

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 104
    invoke-virtual {v12}, Lcom/tencent/bugly/beta/ui/h;->a()V

    goto/16 :goto_0

    .line 90
    :cond_3
    sget-object v2, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v2, v2, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/content/Context;)I

    move-result v2

    .line 92
    const/4 v3, 0x4

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 95
    :cond_4
    new-instance v2, Lcom/tencent/bugly/beta/ui/f;

    invoke-direct {v2}, Lcom/tencent/bugly/beta/ui/f;-><init>()V

    .line 96
    iput-object v1, v2, Lcom/tencent/bugly/beta/ui/f;->m:Lcom/tencent/bugly/beta/download/DownloadTask;

    .line 97
    const/4 v1, 0x1

    invoke-static {v2, v1}, Lcom/tencent/bugly/beta/ui/g;->a(Lcom/tencent/bugly/beta/ui/b;Z)V

    goto :goto_1

    .line 99
    :cond_5
    invoke-virtual {v1}, Lcom/tencent/bugly/beta/download/DownloadTask;->download()V

    goto :goto_1

    .line 110
    :pswitch_4
    iget-object v1, p0, Lcom/tencent/bugly/beta/global/b;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Lcom/tencent/bugly/beta/ui/h;

    .line 111
    iget-object v2, v1, Lcom/tencent/bugly/beta/ui/h;->p:Lcom/tencent/bugly/beta/download/DownloadTask;

    .line 112
    sget-object v3, Lcom/tencent/bugly/beta/download/BetaReceiver;->netListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/tencent/bugly/beta/download/DownloadTask;->getDownloadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-virtual {v2}, Lcom/tencent/bugly/beta/download/DownloadTask;->stop()V

    .line 114
    invoke-virtual {v1, v2}, Lcom/tencent/bugly/beta/ui/h;->a(Lcom/tencent/bugly/beta/download/DownloadTask;)V

    goto/16 :goto_0

    .line 119
    :pswitch_5
    iget-object v1, p0, Lcom/tencent/bugly/beta/global/b;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Lcom/tencent/bugly/beta/ui/h;

    .line 120
    iget-object v2, v1, Lcom/tencent/bugly/beta/ui/h;->r:Ljava/lang/Runnable;

    if-eqz v2, :cond_6

    .line 121
    iget-object v2, v1, Lcom/tencent/bugly/beta/ui/h;->r:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 123
    :cond_6
    invoke-virtual {v1}, Lcom/tencent/bugly/beta/ui/h;->a()V

    goto/16 :goto_0

    .line 127
    :pswitch_6
    iget-object v1, p0, Lcom/tencent/bugly/beta/global/b;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Lcom/tencent/bugly/beta/ui/e;

    .line 134
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 135
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_0

    .line 140
    :pswitch_7
    iget-object v1, p0, Lcom/tencent/bugly/beta/global/b;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Lcom/tencent/bugly/beta/ui/e;

    .line 142
    invoke-virtual {v1}, Lcom/tencent/bugly/beta/ui/e;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
