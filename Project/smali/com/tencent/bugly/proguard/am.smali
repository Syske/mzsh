.class public Lcom/tencent/bugly/proguard/am;
.super Ljava/lang/Object;
.source "BUGLY"


# direct methods
.method public static a(Landroid/content/Context;I[B)Lcom/tencent/bugly/proguard/bi;
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 232
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v3

    .line 233
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v4

    .line 235
    if-eqz v3, :cond_0

    if-nez v4, :cond_1

    .line 236
    :cond_0
    const-string v0, "Can not create request pkg for parameters is invalid."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v1

    .line 343
    :goto_0
    return-object v0

    .line 242
    :cond_1
    :try_start_0
    new-instance v2, Lcom/tencent/bugly/proguard/bi;

    invoke-direct {v2}, Lcom/tencent/bugly/proguard/bi;-><init>()V

    .line 244
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :try_start_1
    iget-byte v0, v3, Lcom/tencent/bugly/crashreport/common/info/a;->c:B

    iput v0, v2, Lcom/tencent/bugly/proguard/bi;->a:I

    .line 246
    invoke-virtual {v3}, Lcom/tencent/bugly/crashreport/common/info/a;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/bugly/proguard/bi;->b:Ljava/lang/String;

    .line 247
    iget-object v0, v3, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/bugly/proguard/bi;->c:Ljava/lang/String;

    .line 248
    iget-object v0, v3, Lcom/tencent/bugly/crashreport/common/info/a;->o:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/bugly/proguard/bi;->d:Ljava/lang/String;

    .line 249
    iget-object v0, v3, Lcom/tencent/bugly/crashreport/common/info/a;->q:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/bugly/proguard/bi;->e:Ljava/lang/String;

    .line 250
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "2.4.0"

    iput-object v0, v2, Lcom/tencent/bugly/proguard/bi;->f:Ljava/lang/String;

    .line 251
    iput p1, v2, Lcom/tencent/bugly/proguard/bi;->g:I

    .line 252
    if-nez p2, :cond_4

    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_1
    iput-object v0, v2, Lcom/tencent/bugly/proguard/bi;->h:[B

    .line 253
    iget-object v0, v3, Lcom/tencent/bugly/crashreport/common/info/a;->l:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/bugly/proguard/bi;->i:Ljava/lang/String;

    .line 254
    iget-object v0, v3, Lcom/tencent/bugly/crashreport/common/info/a;->m:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/bugly/proguard/bi;->j:Ljava/lang/String;

    .line 255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v2, Lcom/tencent/bugly/proguard/bi;->k:Ljava/util/Map;

    .line 256
    invoke-virtual {v3}, Lcom/tencent/bugly/crashreport/common/info/a;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/bugly/proguard/bi;->l:Ljava/lang/String;

    .line 257
    iget-wide v6, v4, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->p:J

    iput-wide v6, v2, Lcom/tencent/bugly/proguard/bi;->m:J

    .line 258
    invoke-virtual {v3}, Lcom/tencent/bugly/crashreport/common/info/a;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/bugly/proguard/bi;->o:Ljava/lang/String;

    .line 259
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/b;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/bugly/proguard/bi;->p:Ljava/lang/String;

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/tencent/bugly/proguard/bi;->q:J

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/tencent/bugly/crashreport/common/info/a;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/bugly/proguard/bi;->r:Ljava/lang/String;

    .line 262
    invoke-virtual {v3}, Lcom/tencent/bugly/crashreport/common/info/a;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/bugly/proguard/bi;->s:Ljava/lang/String;

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/tencent/bugly/crashreport/common/info/a;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/bugly/proguard/bi;->t:Ljava/lang/String;

    .line 264
    invoke-virtual {v3}, Lcom/tencent/bugly/crashreport/common/info/a;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/bugly/proguard/bi;->u:Ljava/lang/String;

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/tencent/bugly/crashreport/common/info/a;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/bugly/proguard/bi;->v:Ljava/lang/String;

    .line 266
    iget-object v0, v2, Lcom/tencent/bugly/proguard/bi;->p:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/bugly/proguard/bi;->w:Ljava/lang/String;

    .line 267
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "com.tencent.bugly"

    iput-object v0, v2, Lcom/tencent/bugly/proguard/bi;->n:Ljava/lang/String;

    .line 270
    iget-object v0, v2, Lcom/tencent/bugly/proguard/bi;->k:Ljava/util/Map;

    const-string v5, "A26"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/tencent/bugly/crashreport/common/info/a;->y()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v0, v2, Lcom/tencent/bugly/proguard/bi;->k:Ljava/util/Map;

    const-string v5, "F11"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v3, Lcom/tencent/bugly/crashreport/common/info/a;->E:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v0, v2, Lcom/tencent/bugly/proguard/bi;->k:Ljava/util/Map;

    const-string v5, "F12"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v3, Lcom/tencent/bugly/crashreport/common/info/a;->D:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object v0, v2, Lcom/tencent/bugly/proguard/bi;->k:Ljava/util/Map;

    const-string v5, "G1"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/tencent/bugly/crashreport/common/info/a;->u()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    iget-object v0, v2, Lcom/tencent/bugly/proguard/bi;->k:Ljava/util/Map;

    const-string v5, "G2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/tencent/bugly/crashreport/common/info/a;->K()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-object v0, v2, Lcom/tencent/bugly/proguard/bi;->k:Ljava/util/Map;

    const-string v5, "G3"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/tencent/bugly/crashreport/common/info/a;->L()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget-object v0, v2, Lcom/tencent/bugly/proguard/bi;->k:Ljava/util/Map;

    const-string v5, "G4"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/tencent/bugly/crashreport/common/info/a;->M()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object v0, v2, Lcom/tencent/bugly/proguard/bi;->k:Ljava/util/Map;

    const-string v5, "G5"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/tencent/bugly/crashreport/common/info/a;->N()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object v0, v2, Lcom/tencent/bugly/proguard/bi;->k:Ljava/util/Map;

    const-string v5, "G6"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/tencent/bugly/crashreport/common/info/a;->O()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v0, v2, Lcom/tencent/bugly/proguard/bi;->k:Ljava/util/Map;

    const-string v5, "G7"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/tencent/bugly/crashreport/common/info/a;->P()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object v0, v2, Lcom/tencent/bugly/proguard/bi;->k:Ljava/util/Map;

    const-string v5, "D3"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/tencent/bugly/crashreport/common/info/a;->p:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lcom/tencent/bugly/b;->b:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 309
    sget-object v0, Lcom/tencent/bugly/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/a;

    .line 310
    iget-object v6, v0, Lcom/tencent/bugly/a;->versionKey:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/tencent/bugly/a;->version:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 311
    iget-object v6, v2, Lcom/tencent/bugly/proguard/bi;->k:Ljava/util/Map;

    iget-object v7, v0, Lcom/tencent/bugly/a;->versionKey:Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/bugly/a;->version:Ljava/lang/String;

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 339
    :catch_0
    move-exception v0

    .line 340
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->b(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 341
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    move-object v0, v1

    .line 343
    goto/16 :goto_0

    :cond_4
    move-object v0, p2

    .line 252
    goto/16 :goto_1

    .line 315
    :cond_5
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 317
    :try_start_4
    invoke-static {}, Lcom/tencent/bugly/proguard/ap;->a()Lcom/tencent/bugly/proguard/ap;

    move-result-object v0

    .line 318
    if-eqz v0, :cond_6

    iget-boolean v0, v0, Lcom/tencent/bugly/proguard/ap;->d:Z

    if-nez v0, :cond_6

    .line 319
    if-eqz p2, :cond_6

    .line 321
    iget-object v0, v2, Lcom/tencent/bugly/proguard/bi;->h:[B

    const/4 v5, 0x2

    const/4 v6, 0x1

    iget-object v4, v4, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->u:Ljava/lang/String;

    invoke-static {v0, v5, v6, v4}, Lcom/tencent/bugly/proguard/au;->a([BIILjava/lang/String;)[B

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/bugly/proguard/bi;->h:[B

    .line 324
    iget-object v0, v2, Lcom/tencent/bugly/proguard/bi;->h:[B

    if-nez v0, :cond_6

    .line 325
    const-string v0, "reqPkg sbuffer error!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v1

    .line 326
    goto/16 :goto_0

    .line 331
    :cond_6
    invoke-virtual {v3}, Lcom/tencent/bugly/crashreport/common/info/a;->D()Ljava/util/Map;

    move-result-object v0

    .line 332
    if-eqz v0, :cond_7

    .line 333
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 334
    iget-object v4, v2, Lcom/tencent/bugly/proguard/bi;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :cond_7
    move-object v0, v2

    .line 338
    goto/16 :goto_0
.end method

.method public static a([BLcom/tencent/bugly/crashreport/common/strategy/StrategyBean;Z)Lcom/tencent/bugly/proguard/bj;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 373
    if-eqz p0, :cond_1

    .line 375
    :try_start_0
    new-instance v0, Lcom/tencent/bugly/proguard/e;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/e;-><init>()V

    .line 376
    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/e;->b()V

    .line 377
    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/e;->a(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v0, p0}, Lcom/tencent/bugly/proguard/e;->a([B)V

    .line 379
    const-string v2, "detail"

    new-instance v3, Lcom/tencent/bugly/proguard/bj;

    invoke-direct {v3}, Lcom/tencent/bugly/proguard/bj;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/tencent/bugly/proguard/e;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 382
    const-class v2, Lcom/tencent/bugly/proguard/bj;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 383
    const-class v2, Lcom/tencent/bugly/proguard/bj;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/bj;

    .line 385
    :goto_0
    if-nez p2, :cond_0

    .line 386
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/tencent/bugly/proguard/bj;->c:[B

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/tencent/bugly/proguard/bj;->c:[B

    array-length v2, v2

    if-lez v2, :cond_0

    .line 387
    const-string v2, "resp buf %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/tencent/bugly/proguard/bj;->c:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 389
    iget-object v2, v0, Lcom/tencent/bugly/proguard/bj;->c:[B

    const/4 v3, 0x2

    const/4 v4, 0x1

    sget-object v5, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->d:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/tencent/bugly/proguard/au;->b([BIILjava/lang/String;)[B

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/bugly/proguard/bj;->c:[B

    .line 392
    iget-object v2, v0, Lcom/tencent/bugly/proguard/bj;->c:[B

    if-nez v2, :cond_0

    .line 393
    const-string v0, "resp sbuffer error!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 407
    :cond_0
    :goto_1
    return-object v0

    .line 400
    :catch_0
    move-exception v0

    .line 401
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->b(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 402
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    move-object v0, v1

    .line 407
    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Lcom/tencent/bugly/crashreport/biz/UserInfoBean;Lcom/tencent/bugly/crashreport/common/info/a;)Lcom/tencent/bugly/proguard/bm;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 49
    if-nez p0, :cond_0

    move-object v0, v1

    .line 129
    :goto_0
    return-object v0

    .line 52
    :cond_0
    new-instance v4, Lcom/tencent/bugly/proguard/bm;

    invoke-direct {v4}, Lcom/tencent/bugly/proguard/bm;-><init>()V

    .line 53
    iget-wide v6, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->e:J

    iput-wide v6, v4, Lcom/tencent/bugly/proguard/bm;->a:J

    .line 54
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->j:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/proguard/bm;->e:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->c:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/proguard/bm;->d:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->d:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/proguard/bm;->c:Ljava/lang/String;

    .line 57
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/bugly/proguard/bm;->g:Ljava/lang/String;

    .line 58
    iget v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->o:I

    if-ne v0, v2, :cond_3

    move v0, v2

    :goto_1
    iput-boolean v0, v4, Lcom/tencent/bugly/proguard/bm;->h:Z

    .line 60
    iget v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->b:I

    packed-switch v0, :pswitch_data_0

    .line 79
    iget v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->b:I

    const/16 v5, 0xa

    if-lt v0, v5, :cond_4

    iget v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->b:I

    const/16 v5, 0x14

    if-ge v0, v5, :cond_4

    .line 81
    iget v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->b:I

    int-to-byte v0, v0

    iput-byte v0, v4, Lcom/tencent/bugly/proguard/bm;->b:B

    .line 90
    :goto_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/proguard/bm;->f:Ljava/util/Map;

    .line 91
    iget v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->p:I

    if-ltz v0, :cond_1

    .line 92
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bm;->f:Ljava/util/Map;

    const-string v1, "C01"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->p:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_1
    iget v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->q:I

    if-ltz v0, :cond_2

    .line 96
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bm;->f:Ljava/util/Map;

    const-string v1, "C02"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->q:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->r:Ljava/util/Map;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 100
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 101
    iget-object v6, v4, Lcom/tencent/bugly/proguard/bm;->f:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "C03_"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 101
    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    move v0, v3

    .line 58
    goto/16 :goto_1

    .line 62
    :pswitch_0
    iput-byte v2, v4, Lcom/tencent/bugly/proguard/bm;->b:B

    goto/16 :goto_2

    .line 66
    :pswitch_1
    iput-byte v8, v4, Lcom/tencent/bugly/proguard/bm;->b:B

    goto/16 :goto_2

    .line 70
    :pswitch_2
    const/4 v0, 0x4

    iput-byte v0, v4, Lcom/tencent/bugly/proguard/bm;->b:B

    goto/16 :goto_2

    .line 74
    :pswitch_3
    const/4 v0, 0x3

    iput-byte v0, v4, Lcom/tencent/bugly/proguard/bm;->b:B

    goto/16 :goto_2

    .line 83
    :cond_4
    const-string v0, "unknown uinfo type %d "

    new-array v2, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v1

    .line 84
    goto/16 :goto_0

    .line 106
    :cond_5
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->s:Ljava/util/Map;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 107
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 108
    iget-object v6, v4, Lcom/tencent/bugly/proguard/bm;->f:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "C04_"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 108
    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 114
    :cond_6
    iget-object v1, v4, Lcom/tencent/bugly/proguard/bm;->f:Ljava/util/Map;

    const-string v5, "A36"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->l:Z

    if-nez v0, :cond_7

    move v0, v2

    :goto_5
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bm;->f:Ljava/util/Map;

    const-string v1, "F02"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->g:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bm;->f:Ljava/util/Map;

    const-string v1, "F03"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->h:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bm;->f:Ljava/util/Map;

    const-string v1, "F04"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->j:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bm;->f:Ljava/util/Map;

    const-string v1, "F05"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->i:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bm;->f:Ljava/util/Map;

    const-string v1, "F06"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->m:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bm;->f:Ljava/util/Map;

    const-string v1, "F10"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->k:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v0, "summary type %d vm:%d"

    new-array v1, v8, [Ljava/lang/Object;

    iget-byte v5, v4, Lcom/tencent/bugly/proguard/bm;->b:B

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v1, v3

    iget-object v3, v4, Lcom/tencent/bugly/proguard/bm;->f:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v4

    .line 129
    goto/16 :goto_0

    :cond_7
    move v0, v3

    .line 114
    goto/16 :goto_5

    .line 60
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Ljava/util/List;I)Lcom/tencent/bugly/proguard/bn;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/crashreport/biz/UserInfoBean;",
            ">;I)",
            "Lcom/tencent/bugly/proguard/bn;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 137
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 195
    :goto_0
    return-object v0

    .line 140
    :cond_1
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v1

    .line 141
    if-nez v1, :cond_2

    move-object v0, v2

    .line 142
    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->t()Ljava/lang/String;

    .line 145
    new-instance v3, Lcom/tencent/bugly/proguard/bn;

    invoke-direct {v3}, Lcom/tencent/bugly/proguard/bn;-><init>()V

    .line 146
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/common/info/a;->e:Ljava/lang/String;

    iput-object v0, v3, Lcom/tencent/bugly/proguard/bn;->b:Ljava/lang/String;

    .line 147
    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/bugly/proguard/bn;->c:Ljava/lang/String;

    .line 148
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 149
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    .line 150
    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/am;->a(Lcom/tencent/bugly/crashreport/biz/UserInfoBean;Lcom/tencent/bugly/crashreport/common/info/a;)Lcom/tencent/bugly/proguard/bm;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_3

    .line 152
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 155
    :cond_4
    iput-object v4, v3, Lcom/tencent/bugly/proguard/bn;->d:Ljava/util/ArrayList;

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v3, Lcom/tencent/bugly/proguard/bn;->e:Ljava/util/Map;

    .line 157
    iget-object v0, v3, Lcom/tencent/bugly/proguard/bn;->e:Ljava/util/Map;

    const-string v4, "A7"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/tencent/bugly/crashreport/common/info/a;->k:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, v3, Lcom/tencent/bugly/proguard/bn;->e:Ljava/util/Map;

    const-string v4, "A6"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->s()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v0, v3, Lcom/tencent/bugly/proguard/bn;->e:Ljava/util/Map;

    const-string v4, "A5"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->r()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, v3, Lcom/tencent/bugly/proguard/bn;->e:Ljava/util/Map;

    const-string v4, "A2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->p()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, v3, Lcom/tencent/bugly/proguard/bn;->e:Ljava/util/Map;

    const-string v4, "A1"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->p()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, v3, Lcom/tencent/bugly/proguard/bn;->e:Ljava/util/Map;

    const-string v4, "A24"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/tencent/bugly/crashreport/common/info/a;->m:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, v3, Lcom/tencent/bugly/proguard/bn;->e:Ljava/util/Map;

    const-string v4, "A17"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->q()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, v3, Lcom/tencent/bugly/proguard/bn;->e:Ljava/util/Map;

    const-string v4, "A15"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->w()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, v3, Lcom/tencent/bugly/proguard/bn;->e:Ljava/util/Map;

    const-string v4, "A13"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->x()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, v3, Lcom/tencent/bugly/proguard/bn;->e:Ljava/util/Map;

    const-string v4, "F08"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/tencent/bugly/crashreport/common/info/a;->A:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, v3, Lcom/tencent/bugly/proguard/bn;->e:Ljava/util/Map;

    const-string v4, "F09"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/tencent/bugly/crashreport/common/info/a;->B:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->E()Ljava/util/Map;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 175
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 176
    iget-object v5, v3, Lcom/tencent/bugly/proguard/bn;->e:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "C04_"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 176
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 181
    :cond_5
    packed-switch p1, :pswitch_data_0

    .line 191
    const-string v0, "unknown up type %d "

    new-array v1, v8, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v2

    .line 192
    goto/16 :goto_0

    .line 183
    :pswitch_0
    iput-byte v8, v3, Lcom/tencent/bugly/proguard/bn;->a:B

    :goto_3
    move-object v0, v3

    .line 195
    goto/16 :goto_0

    .line 187
    :pswitch_1
    const/4 v0, 0x2

    iput-byte v0, v3, Lcom/tencent/bugly/proguard/bn;->a:B

    goto :goto_3

    .line 181
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a([BLjava/lang/Class;)Lcom/tencent/bugly/proguard/m;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/tencent/bugly/proguard/m;",
            ">([B",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 207
    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 222
    :goto_0
    return-object v0

    .line 211
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/m;

    .line 212
    new-instance v2, Lcom/tencent/bugly/proguard/k;

    invoke-direct {v2, p0}, Lcom/tencent/bugly/proguard/k;-><init>([B)V

    .line 213
    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Lcom/tencent/bugly/proguard/k;->a(Ljava/lang/String;)I

    .line 214
    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/m;->a(Lcom/tencent/bugly/proguard/k;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->b(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 219
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    move-object v0, v1

    .line 222
    goto :goto_0
.end method

.method public static a(Lcom/tencent/bugly/proguard/bi;)[B
    .locals 2

    .prologue
    .line 352
    :try_start_0
    new-instance v0, Lcom/tencent/bugly/proguard/e;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/e;-><init>()V

    .line 353
    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/e;->b()V

    .line 354
    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/e;->a(Ljava/lang/String;)V

    .line 355
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/e;->a(I)V

    .line 356
    const-string v1, "RqdServer"

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/e;->b(Ljava/lang/String;)V

    .line 357
    const-string v1, "sync"

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/e;->c(Ljava/lang/String;)V

    .line 358
    const-string v1, "detail"

    invoke-virtual {v0, v1, p0}, Lcom/tencent/bugly/proguard/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 359
    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/e;->a()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 365
    :goto_0
    return-object v0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 362
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 365
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/tencent/bugly/proguard/m;)[B
    .locals 2

    .prologue
    .line 415
    :try_start_0
    new-instance v0, Lcom/tencent/bugly/proguard/l;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/l;-><init>()V

    .line 416
    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;)I

    .line 417
    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/m;->a(Lcom/tencent/bugly/proguard/l;)V

    .line 418
    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/l;->b()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 424
    :goto_0
    return-object v0

    .line 419
    :catch_0
    move-exception v0

    .line 420
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 421
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 424
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
