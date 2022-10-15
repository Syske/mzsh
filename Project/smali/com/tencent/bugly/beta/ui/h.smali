.class public Lcom/tencent/bugly/beta/ui/h;
.super Lcom/tencent/bugly/beta/ui/a;
.source "BUGLY"


# static fields
.field public static u:Lcom/tencent/bugly/beta/ui/h;


# instance fields
.field private A:Lcom/tencent/bugly/beta/ui/d;

.field protected m:Landroid/widget/TextView;

.field protected n:Landroid/widget/TextView;

.field public o:Lcom/tencent/bugly/proguard/y;

.field public p:Lcom/tencent/bugly/beta/download/DownloadTask;

.field public q:Ljava/lang/Runnable;

.field public r:Ljava/lang/Runnable;

.field protected s:Landroid/graphics/Bitmap;

.field public t:Landroid/graphics/drawable/BitmapDrawable;

.field public v:Lcom/tencent/bugly/beta/ui/UILifecycleListener;

.field w:Landroid/view/View$OnClickListener;

.field x:Landroid/view/View$OnClickListener;

.field y:Landroid/view/View$OnClickListener;

.field z:Lcom/tencent/bugly/beta/download/DownloadListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/tencent/bugly/beta/ui/h;

    invoke-direct {v0}, Lcom/tencent/bugly/beta/ui/h;-><init>()V

    sput-object v0, Lcom/tencent/bugly/beta/ui/h;->u:Lcom/tencent/bugly/beta/ui/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    invoke-direct {p0}, Lcom/tencent/bugly/beta/ui/a;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->A:Lcom/tencent/bugly/beta/ui/d;

    .line 58
    iput-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->s:Landroid/graphics/Bitmap;

    .line 176
    new-instance v0, Lcom/tencent/bugly/beta/global/b;

    const/4 v1, 0x4

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/tencent/bugly/beta/global/b;-><init>(I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->w:Landroid/view/View$OnClickListener;

    .line 178
    new-instance v0, Lcom/tencent/bugly/beta/global/b;

    const/4 v1, 0x5

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/tencent/bugly/beta/global/b;-><init>(I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->x:Landroid/view/View$OnClickListener;

    .line 180
    new-instance v0, Lcom/tencent/bugly/beta/global/b;

    const/4 v1, 0x6

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/tencent/bugly/beta/global/b;-><init>(I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->y:Landroid/view/View$OnClickListener;

    .line 224
    new-instance v0, Lcom/tencent/bugly/beta/download/a;

    const/4 v1, 0x2

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/tencent/bugly/beta/download/a;-><init>(I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->z:Lcom/tencent/bugly/beta/download/DownloadListener;

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/bugly/beta/download/DownloadTask;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 187
    const-string v0, ""

    .line 189
    invoke-virtual {p1}, Lcom/tencent/bugly/beta/download/DownloadTask;->getStatus()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move-object v2, v0

    move-object v0, v1

    .line 217
    :goto_0
    iget-object v3, p0, Lcom/tencent/bugly/beta/ui/h;->o:Lcom/tencent/bugly/proguard/y;

    iget-byte v3, v3, Lcom/tencent/bugly/proguard/y;->g:B

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 218
    sget-object v1, Lcom/tencent/bugly/beta/Beta;->strUpgradeDialogCancelBtn:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/bugly/beta/ui/h;->y:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/tencent/bugly/beta/ui/h;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 222
    :goto_1
    return-void

    .line 192
    :pswitch_0
    sget-object v2, Lcom/tencent/bugly/beta/Beta;->strUpgradeDialogUpgradeBtn:Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->w:Landroid/view/View$OnClickListener;

    goto :goto_0

    .line 197
    :pswitch_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v2, "%.1f%%"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 198
    invoke-virtual {p1}, Lcom/tencent/bugly/beta/download/DownloadTask;->getSavedLength()J

    move-result-wide v6

    long-to-float v5, v6

    invoke-virtual {p1}, Lcom/tencent/bugly/beta/download/DownloadTask;->getTotalLength()J

    move-result-wide v6

    long-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    .line 197
    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 199
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->x:Landroid/view/View$OnClickListener;

    goto :goto_0

    .line 202
    :pswitch_2
    sget-object v2, Lcom/tencent/bugly/beta/Beta;->strUpgradeDialogInstallBtn:Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->w:Landroid/view/View$OnClickListener;

    goto :goto_0

    .line 206
    :pswitch_3
    sget-object v2, Lcom/tencent/bugly/beta/Beta;->strUpgradeDialogRetryBtn:Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->w:Landroid/view/View$OnClickListener;

    goto :goto_0

    .line 210
    :pswitch_4
    sget-object v2, Lcom/tencent/bugly/beta/Beta;->strUpgradeDialogContinueBtn:Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->w:Landroid/view/View$OnClickListener;

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {p0, v1, v1, v2, v0}, Lcom/tencent/bugly/beta/ui/h;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized a(Lcom/tencent/bugly/proguard/y;Lcom/tencent/bugly/beta/download/DownloadTask;)V
    .locals 5

    .prologue
    .line 325
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/bugly/beta/ui/h;->o:Lcom/tencent/bugly/proguard/y;

    .line 326
    iput-object p2, p0, Lcom/tencent/bugly/beta/ui/h;->p:Lcom/tencent/bugly/beta/download/DownloadTask;

    .line 327
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->p:Lcom/tencent/bugly/beta/download/DownloadTask;

    iget-object v1, p0, Lcom/tencent/bugly/beta/ui/h;->z:Lcom/tencent/bugly/beta/download/DownloadListener;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/beta/download/DownloadTask;->addListener(Lcom/tencent/bugly/beta/download/DownloadListener;)V

    .line 329
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/tencent/bugly/beta/global/d;

    const/4 v2, 0x7

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    monitor-exit p0

    return-void

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 336
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 337
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->o:Lcom/tencent/bugly/proguard/y;

    iget-byte v0, v0, Lcom/tencent/bugly/proguard/y;->g:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 338
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->r:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/bugly/beta/ui/h;->a()V

    .line 343
    :cond_1
    const/4 v0, 0x1

    .line 345
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized c()V
    .locals 9

    .prologue
    const/high16 v8, 0x49800000    # 1048576.0f

    const/high16 v7, 0x44800000    # 1024.0f

    const/4 v0, 0x0

    .line 231
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/beta/ui/h;->b:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/bugly/beta/ui/h;->o:Lcom/tencent/bugly/proguard/y;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/bugly/beta/ui/h;->p:Lcom/tencent/bugly/beta/download/DownloadTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 317
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 234
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/tencent/bugly/beta/ui/h;->k:I

    if-nez v1, :cond_8

    .line 235
    iget v1, p0, Lcom/tencent/bugly/beta/ui/h;->j:I

    if-eqz v1, :cond_7

    .line 237
    iget-object v1, p0, Lcom/tencent/bugly/beta/ui/h;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tencent/bugly/beta/ui/h;->i:Lcom/tencent/bugly/beta/global/ResBean;

    const-string v6, "IMG_title"

    .line 238
    invoke-virtual {v5, v6}, Lcom/tencent/bugly/beta/global/ResBean;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/beta/ui/h;->s:Landroid/graphics/Bitmap;

    .line 239
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/bugly/beta/ui/h;->t:Landroid/graphics/drawable/BitmapDrawable;

    .line 242
    iget-object v1, p0, Lcom/tencent/bugly/beta/ui/h;->s:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    .line 243
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->s:Landroid/graphics/Bitmap;

    .line 249
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/tencent/bugly/beta/ui/h;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/bugly/beta/ui/h;->A:Lcom/tencent/bugly/beta/ui/d;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 250
    new-instance v1, Lcom/tencent/bugly/beta/ui/d;

    const/4 v2, 0x1

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/tencent/bugly/beta/ui/h;->e:Landroid/widget/TextView;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const/4 v0, 0x3

    iget v4, p0, Lcom/tencent/bugly/beta/ui/h;->j:I

    .line 252
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-direct {v1, v2, v3}, Lcom/tencent/bugly/beta/ui/d;-><init>(I[Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/tencent/bugly/beta/ui/h;->A:Lcom/tencent/bugly/beta/ui/d;

    .line 253
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/bugly/beta/ui/h;->A:Lcom/tencent/bugly/beta/ui/d;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 279
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/tencent/bugly/beta/ui/h;->n:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->o:Lcom/tencent/bugly/proguard/y;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/y;->b:Ljava/lang/String;

    .line 280
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x1f4

    if-le v0, v2, :cond_b

    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->o:Lcom/tencent/bugly/proguard/y;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/y;->b:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x1f4

    .line 281
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 280
    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-boolean v0, v0, Lcom/tencent/bugly/beta/global/e;->R:Z

    if-eqz v0, :cond_4

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    sget-object v1, Lcom/tencent/bugly/beta/Beta;->strUpgradeDialogVersionLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/bugly/beta/ui/h;->o:Lcom/tencent/bugly/proguard/y;

    iget-object v2, v2, Lcom/tencent/bugly/proguard/y;->e:Lcom/tencent/bugly/proguard/v;

    iget-object v2, v2, Lcom/tencent/bugly/proguard/v;->d:Ljava/lang/String;

    .line 287
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    sget-object v1, Lcom/tencent/bugly/beta/Beta;->strUpgradeDialogFileSizeLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    iget-object v1, p0, Lcom/tencent/bugly/beta/ui/h;->o:Lcom/tencent/bugly/proguard/y;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    iget-wide v2, v1, Lcom/tencent/bugly/proguard/u;->d:J

    long-to-float v1, v2

    .line 291
    cmpl-float v2, v1, v8

    if-ltz v2, :cond_c

    .line 292
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%.1f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    div-float/2addr v1, v8

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    :goto_4
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm"

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 303
    sget-object v2, Lcom/tencent/bugly/beta/Beta;->strUpgradeDialogUpdateTimeLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    iget-object v4, p0, Lcom/tencent/bugly/beta/ui/h;->o:Lcom/tencent/bugly/proguard/y;

    iget-wide v4, v4, Lcom/tencent/bugly/proguard/y;->o:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 304
    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 303
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    iget-object v1, p0, Lcom/tencent/bugly/beta/ui/h;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    :cond_4
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->p:Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/beta/ui/h;->a(Lcom/tencent/bugly/beta/download/DownloadTask;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    :try_start_2
    iget v1, p0, Lcom/tencent/bugly/beta/ui/h;->k:I

    if-eqz v1, :cond_5

    .line 311
    const-string v1, "please confirm your argument: [Beta.upgradeDialogLayoutId] is correct"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 313
    :cond_5
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 314
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 244
    :cond_6
    :try_start_3
    sget-object v1, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget v1, v1, Lcom/tencent/bugly/beta/global/e;->h:I

    if-eqz v1, :cond_2

    .line 245
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->a:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget v4, v4, Lcom/tencent/bugly/beta/global/e;->h:I

    .line 246
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_1

    .line 255
    :cond_7
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/bugly/beta/ui/h;->a:Landroid/content/Context;

    const/high16 v2, 0x42280000    # 42.0f

    invoke-static {v1, v2}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 256
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/bugly/beta/ui/h;->o:Lcom/tencent/bugly/proguard/y;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/y;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 259
    :cond_8
    iget-object v1, p0, Lcom/tencent/bugly/beta/ui/h;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/bugly/beta/ui/h;->o:Lcom/tencent/bugly/proguard/y;

    iget-object v2, v2, Lcom/tencent/bugly/proguard/y;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v1, p0, Lcom/tencent/bugly/beta/ui/h;->d:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 261
    iget-object v1, p0, Lcom/tencent/bugly/beta/ui/h;->d:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 262
    iget v1, p0, Lcom/tencent/bugly/beta/ui/h;->j:I

    if-eqz v1, :cond_3

    .line 263
    iget-object v1, p0, Lcom/tencent/bugly/beta/ui/h;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tencent/bugly/beta/ui/h;->i:Lcom/tencent/bugly/beta/global/ResBean;

    const-string v6, "IMG_title"

    .line 264
    invoke-virtual {v5, v6}, Lcom/tencent/bugly/beta/global/ResBean;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/beta/ui/h;->s:Landroid/graphics/Bitmap;

    .line 265
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/bugly/beta/ui/h;->t:Landroid/graphics/drawable/BitmapDrawable;

    .line 267
    iget-object v1, p0, Lcom/tencent/bugly/beta/ui/h;->s:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_a

    .line 268
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->s:Landroid/graphics/Bitmap;

    .line 273
    :cond_9
    :goto_5
    iget-object v1, p0, Lcom/tencent/bugly/beta/ui/h;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 269
    :cond_a
    sget-object v1, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget v1, v1, Lcom/tencent/bugly/beta/global/e;->h:I

    if-eqz v1, :cond_9

    .line 270
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->a:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget v4, v4, Lcom/tencent/bugly/beta/global/e;->h:I

    .line 271
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_5

    .line 281
    :cond_b
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->o:Lcom/tencent/bugly/proguard/y;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/y;->b:Ljava/lang/String;

    goto/16 :goto_3

    .line 294
    :cond_c
    cmpl-float v2, v1, v7

    if-ltz v2, :cond_d

    .line 295
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%.1f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    div-float/2addr v1, v7

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    const-string v1, "K"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 298
    :cond_d
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%.1f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 162
    invoke-super {p0, p1}, Lcom/tencent/bugly/beta/ui/a;->onCreate(Landroid/os/Bundle;)V

    .line 163
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget v0, v0, Lcom/tencent/bugly/beta/global/e;->i:I

    iput v0, p0, Lcom/tencent/bugly/beta/ui/h;->k:I

    .line 164
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->k:Lcom/tencent/bugly/beta/ui/UILifecycleListener;

    iput-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->v:Lcom/tencent/bugly/beta/ui/UILifecycleListener;

    .line 167
    :try_start_0
    sget-object v0, Lcom/tencent/bugly/beta/global/ResBean;->a:Lcom/tencent/bugly/beta/global/ResBean;

    const-string v1, "VAL_style"

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/beta/global/ResBean;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/beta/ui/h;->j:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 170
    iput v2, p0, Lcom/tencent/bugly/beta/ui/h;->j:I

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v10, 0x41700000    # 15.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v4, -0x1

    .line 76
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/bugly/beta/ui/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 78
    iget v0, p0, Lcom/tencent/bugly/beta/ui/h;->k:I

    if-eqz v0, :cond_1

    .line 79
    const-string v0, "beta_upgrade_info"

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->m:Landroid/widget/TextView;

    .line 80
    const-string v0, "beta_upgrade_feature"

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->n:Landroid/widget/TextView;

    .line 132
    :goto_0
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->v:Lcom/tencent/bugly/beta/ui/UILifecycleListener;

    if-eqz v0, :cond_0

    .line 133
    iget-object v2, p0, Lcom/tencent/bugly/beta/ui/h;->v:Lcom/tencent/bugly/beta/ui/UILifecycleListener;

    invoke-virtual {p0}, Lcom/tencent/bugly/beta/ui/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->o:Lcom/tencent/bugly/proguard/y;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/tencent/bugly/beta/UpgradeInfo;

    iget-object v4, p0, Lcom/tencent/bugly/beta/ui/h;->o:Lcom/tencent/bugly/proguard/y;

    invoke-direct {v0, v4}, Lcom/tencent/bugly/beta/UpgradeInfo;-><init>(Lcom/tencent/bugly/proguard/y;)V

    :goto_1
    invoke-interface {v2, v3, v1, v0}, Lcom/tencent/bugly/beta/ui/UILifecycleListener;->onCreate(Landroid/content/Context;Landroid/view/View;Ljava/lang/Object;)V

    .line 135
    :cond_0
    return-object v1

    .line 83
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 86
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/tencent/bugly/beta/ui/h;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 87
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 91
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v0, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 94
    sget-object v3, Lcom/tencent/bugly/beta/global/ResBean;->a:Lcom/tencent/bugly/beta/global/ResBean;

    .line 95
    const/16 v4, 0xe

    .line 97
    sget-object v5, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-boolean v5, v5, Lcom/tencent/bugly/beta/global/e;->R:Z

    if-eqz v5, :cond_2

    .line 98
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/tencent/bugly/beta/ui/h;->a:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/tencent/bugly/beta/ui/h;->m:Landroid/widget/TextView;

    .line 99
    iget-object v5, p0, Lcom/tencent/bugly/beta/ui/h;->m:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    iget-object v5, p0, Lcom/tencent/bugly/beta/ui/h;->m:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "#757575"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    iget-object v5, p0, Lcom/tencent/bugly/beta/ui/h;->m:Landroid/widget/TextView;

    int-to-float v6, v4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 103
    iget-object v5, p0, Lcom/tencent/bugly/beta/ui/h;->m:Landroid/widget/TextView;

    const-string v6, "beta_upgrade_info"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 104
    iget-object v5, p0, Lcom/tencent/bugly/beta/ui/h;->m:Landroid/widget/TextView;

    invoke-virtual {v5, v10, v9}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 105
    iget-object v5, p0, Lcom/tencent/bugly/beta/ui/h;->m:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 110
    :cond_2
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/tencent/bugly/beta/ui/h;->a:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "#273238"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    int-to-float v6, v4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 114
    invoke-virtual {v5}, Landroid/widget/TextView;->setSingleLine()V

    .line 115
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 116
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/tencent/bugly/beta/Beta;->strUpgradeDialogFeatureLabel:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v6, p0, Lcom/tencent/bugly/beta/ui/h;->a:Landroid/content/Context;

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v6, v7}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v5, v8, v6, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 118
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 121
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/tencent/bugly/beta/ui/h;->a:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/tencent/bugly/beta/ui/h;->n:Landroid/widget/TextView;

    .line 122
    iget-object v5, p0, Lcom/tencent/bugly/beta/ui/h;->n:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->n:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "#273238"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->n:Landroid/widget/TextView;

    int-to-float v3, v4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 125
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->n:Landroid/widget/TextView;

    const-string v3, "beta_upgrade_feature"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->n:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/bugly/beta/ui/h;->a:Landroid/content/Context;

    const/high16 v4, 0x43480000    # 200.0f

    invoke-static {v3, v4}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxHeight(I)V

    .line 127
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v10, v9}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 128
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->n:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 129
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 133
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method public onDestroyView()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 141
    :try_start_0
    invoke-super {p0}, Lcom/tencent/bugly/beta/ui/a;->onDestroyView()V

    .line 142
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/bugly/beta/ui/h;->m:Landroid/widget/TextView;

    .line 143
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/bugly/beta/ui/h;->n:Landroid/widget/TextView;

    .line 144
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/tencent/bugly/beta/ui/h;->A:Lcom/tencent/bugly/beta/ui/d;

    .line 146
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    :try_start_2
    iget-object v1, p0, Lcom/tencent/bugly/beta/ui/h;->t:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/tencent/bugly/beta/ui/h;->t:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/tencent/bugly/beta/ui/h;->v:Lcom/tencent/bugly/beta/ui/UILifecycleListener;

    if-eqz v1, :cond_2

    .line 152
    iget-object v1, p0, Lcom/tencent/bugly/beta/ui/h;->v:Lcom/tencent/bugly/beta/ui/UILifecycleListener;

    iget-object v2, p0, Lcom/tencent/bugly/beta/ui/h;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/bugly/beta/ui/h;->b:Landroid/view/View;

    iget-object v4, p0, Lcom/tencent/bugly/beta/ui/h;->o:Lcom/tencent/bugly/proguard/y;

    if-eqz v4, :cond_1

    new-instance v0, Lcom/tencent/bugly/beta/UpgradeInfo;

    iget-object v4, p0, Lcom/tencent/bugly/beta/ui/h;->o:Lcom/tencent/bugly/proguard/y;

    invoke-direct {v0, v4}, Lcom/tencent/bugly/beta/UpgradeInfo;-><init>(Lcom/tencent/bugly/proguard/y;)V

    :cond_1
    invoke-interface {v1, v2, v3, v0}, Lcom/tencent/bugly/beta/ui/UILifecycleListener;->onDestroy(Landroid/content/Context;Landroid/view/View;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 158
    :cond_2
    :goto_0
    return-void

    .line 146
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 155
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 5

    .prologue
    .line 350
    invoke-super {p0}, Lcom/tencent/bugly/beta/ui/a;->onPause()V

    .line 351
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->z:Lcom/tencent/bugly/beta/download/DownloadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->p:Lcom/tencent/bugly/beta/download/DownloadTask;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->p:Lcom/tencent/bugly/beta/download/DownloadTask;

    iget-object v1, p0, Lcom/tencent/bugly/beta/ui/h;->z:Lcom/tencent/bugly/beta/download/DownloadListener;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/beta/download/DownloadTask;->removeListener(Lcom/tencent/bugly/beta/download/DownloadListener;)Z

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->v:Lcom/tencent/bugly/beta/ui/UILifecycleListener;

    if-eqz v0, :cond_1

    .line 356
    iget-object v1, p0, Lcom/tencent/bugly/beta/ui/h;->v:Lcom/tencent/bugly/beta/ui/UILifecycleListener;

    iget-object v2, p0, Lcom/tencent/bugly/beta/ui/h;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/bugly/beta/ui/h;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->o:Lcom/tencent/bugly/proguard/y;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/tencent/bugly/beta/UpgradeInfo;

    iget-object v4, p0, Lcom/tencent/bugly/beta/ui/h;->o:Lcom/tencent/bugly/proguard/y;

    invoke-direct {v0, v4}, Lcom/tencent/bugly/beta/UpgradeInfo;-><init>(Lcom/tencent/bugly/proguard/y;)V

    :goto_0
    invoke-interface {v1, v2, v3, v0}, Lcom/tencent/bugly/beta/ui/UILifecycleListener;->onPause(Landroid/content/Context;Landroid/view/View;Ljava/lang/Object;)V

    .line 358
    :cond_1
    return-void

    .line 356
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 362
    invoke-super {p0}, Lcom/tencent/bugly/beta/ui/a;->onResume()V

    .line 363
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->z:Lcom/tencent/bugly/beta/download/DownloadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->p:Lcom/tencent/bugly/beta/download/DownloadTask;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->p:Lcom/tencent/bugly/beta/download/DownloadTask;

    iget-object v1, p0, Lcom/tencent/bugly/beta/ui/h;->z:Lcom/tencent/bugly/beta/download/DownloadListener;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/beta/download/DownloadTask;->addListener(Lcom/tencent/bugly/beta/download/DownloadListener;)V

    .line 367
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/bugly/beta/ui/h;->c()V

    .line 369
    iget v0, p0, Lcom/tencent/bugly/beta/ui/h;->j:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->s:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 370
    sget-object v0, Lcom/tencent/bugly/beta/global/f;->a:Lcom/tencent/bugly/beta/global/f;

    new-instance v1, Lcom/tencent/bugly/beta/global/d;

    const/4 v2, 0x7

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/beta/global/f;->a(Ljava/lang/Runnable;)V

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->v:Lcom/tencent/bugly/beta/ui/UILifecycleListener;

    if-eqz v0, :cond_2

    .line 374
    iget-object v1, p0, Lcom/tencent/bugly/beta/ui/h;->v:Lcom/tencent/bugly/beta/ui/UILifecycleListener;

    iget-object v2, p0, Lcom/tencent/bugly/beta/ui/h;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/bugly/beta/ui/h;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->o:Lcom/tencent/bugly/proguard/y;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/tencent/bugly/beta/UpgradeInfo;

    iget-object v4, p0, Lcom/tencent/bugly/beta/ui/h;->o:Lcom/tencent/bugly/proguard/y;

    invoke-direct {v0, v4}, Lcom/tencent/bugly/beta/UpgradeInfo;-><init>(Lcom/tencent/bugly/proguard/y;)V

    :goto_0
    invoke-interface {v1, v2, v3, v0}, Lcom/tencent/bugly/beta/ui/UILifecycleListener;->onResume(Landroid/content/Context;Landroid/view/View;Ljava/lang/Object;)V

    .line 376
    :cond_2
    return-void

    .line 374
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 67
    invoke-super {p0}, Lcom/tencent/bugly/beta/ui/a;->onStart()V

    .line 69
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->v:Lcom/tencent/bugly/beta/ui/UILifecycleListener;

    if-eqz v0, :cond_0

    .line 70
    iget-object v1, p0, Lcom/tencent/bugly/beta/ui/h;->v:Lcom/tencent/bugly/beta/ui/UILifecycleListener;

    iget-object v2, p0, Lcom/tencent/bugly/beta/ui/h;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/bugly/beta/ui/h;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->o:Lcom/tencent/bugly/proguard/y;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/tencent/bugly/beta/UpgradeInfo;

    iget-object v4, p0, Lcom/tencent/bugly/beta/ui/h;->o:Lcom/tencent/bugly/proguard/y;

    invoke-direct {v0, v4}, Lcom/tencent/bugly/beta/UpgradeInfo;-><init>(Lcom/tencent/bugly/proguard/y;)V

    :goto_0
    invoke-interface {v1, v2, v3, v0}, Lcom/tencent/bugly/beta/ui/UILifecycleListener;->onStart(Landroid/content/Context;Landroid/view/View;Ljava/lang/Object;)V

    .line 72
    :cond_0
    return-void

    .line 70
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStop()V
    .locals 5

    .prologue
    .line 380
    invoke-super {p0}, Lcom/tencent/bugly/beta/ui/a;->onStop()V

    .line 382
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->v:Lcom/tencent/bugly/beta/ui/UILifecycleListener;

    if-eqz v0, :cond_0

    .line 383
    iget-object v1, p0, Lcom/tencent/bugly/beta/ui/h;->v:Lcom/tencent/bugly/beta/ui/UILifecycleListener;

    iget-object v2, p0, Lcom/tencent/bugly/beta/ui/h;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/bugly/beta/ui/h;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/h;->o:Lcom/tencent/bugly/proguard/y;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/tencent/bugly/beta/UpgradeInfo;

    iget-object v4, p0, Lcom/tencent/bugly/beta/ui/h;->o:Lcom/tencent/bugly/proguard/y;

    invoke-direct {v0, v4}, Lcom/tencent/bugly/beta/UpgradeInfo;-><init>(Lcom/tencent/bugly/proguard/y;)V

    :goto_0
    invoke-interface {v1, v2, v3, v0}, Lcom/tencent/bugly/beta/ui/UILifecycleListener;->onStop(Landroid/content/Context;Landroid/view/View;Ljava/lang/Object;)V

    .line 385
    :cond_0
    return-void

    .line 383
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
