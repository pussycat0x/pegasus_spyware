.class final Lcom/tendcloud/tenddata/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:I = 0x1

.field private static final b:I = 0x5000

.field private static final c:I = 0x2710

.field private static final d:Landroid/os/HandlerThread;

.field private static e:Lcom/tendcloud/tenddata/c;

.field private static f:Landroid/os/Handler;


# instance fields
.field private g:I

.field private h:Z

.field private i:J

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ProcessingThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tendcloud/tenddata/c;->d:Landroid/os/HandlerThread;

    sput-object v2, Lcom/tendcloud/tenddata/c;->e:Lcom/tendcloud/tenddata/c;

    sput-object v2, Lcom/tendcloud/tenddata/c;->f:Landroid/os/Handler;

    sget-object v0, Lcom/tendcloud/tenddata/c;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/tendcloud/tenddata/c;->g:I

    iput-boolean v0, p0, Lcom/tendcloud/tenddata/c;->h:Z

    iput v0, p0, Lcom/tendcloud/tenddata/c;->j:I

    return-void
.end method

.method static declared-synchronized a()Lcom/tendcloud/tenddata/c;
    .locals 2

    const-class v1, Lcom/tendcloud/tenddata/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/c;->e:Lcom/tendcloud/tenddata/c;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tendcloud/tenddata/c;->e()V

    :cond_0
    sget-object v0, Lcom/tendcloud/tenddata/c;->e:Lcom/tendcloud/tenddata/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/tendcloud/tenddata/ah;)V
    .locals 4

    const-string v0, "TalkingData"

    const-string v1, "Send Success, Clear Data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/tendcloud/tenddata/TCAgent;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/q;->a(Landroid/content/Context;)V

    iget-object v0, p1, Lcom/tendcloud/tenddata/ah;->e:Ljava/util/List;

    iget-wide v1, p1, Lcom/tendcloud/tenddata/ah;->f:J

    invoke-static {v1, v2}, Lcom/tendcloud/tenddata/q;->b(J)V

    iget-wide v1, p1, Lcom/tendcloud/tenddata/ah;->g:J

    invoke-static {v1, v2}, Lcom/tendcloud/tenddata/q;->c(J)V

    iget-wide v1, p1, Lcom/tendcloud/tenddata/ah;->h:J

    invoke-static {v1, v2}, Lcom/tendcloud/tenddata/q;->d(J)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/ag;

    iget v2, v0, Lcom/tendcloud/tenddata/ag;->a:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tendcloud/tenddata/TCAgent;->b(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, v0, Lcom/tendcloud/tenddata/ag;->b:Lcom/tendcloud/tenddata/b;

    iget v2, v0, Lcom/tendcloud/tenddata/b;->c:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/tendcloud/tenddata/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tendcloud/tenddata/q;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget v2, v0, Lcom/tendcloud/tenddata/b;->c:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/tendcloud/tenddata/b;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/tendcloud/tenddata/q;->b(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/tendcloud/tenddata/b;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/tendcloud/tenddata/q;->c(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/tendcloud/tenddata/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tendcloud/tenddata/q;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/tendcloud/tenddata/q;->b()V

    iget-object v0, p1, Lcom/tendcloud/tenddata/ah;->i:[[Ljava/lang/Long;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/tendcloud/tenddata/TCAgent;->a()V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static declared-synchronized b()Landroid/os/Handler;
    .locals 2

    const-class v1, Lcom/tendcloud/tenddata/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/c;->f:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tendcloud/tenddata/c;->e()V

    :cond_0
    sget-object v0, Lcom/tendcloud/tenddata/c;->f:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static e()V
    .locals 2

    sget-object v0, Lcom/tendcloud/tenddata/c;->e:Lcom/tendcloud/tenddata/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tendcloud/tenddata/c;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/c;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/c;->e:Lcom/tendcloud/tenddata/c;

    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/tendcloud/tenddata/c;->e:Lcom/tendcloud/tenddata/c;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    sget-object v0, Lcom/tendcloud/tenddata/c;->f:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Lcom/tendcloud/tenddata/g;

    sget-object v1, Lcom/tendcloud/tenddata/c;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tendcloud/tenddata/g;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tendcloud/tenddata/c;->f:Landroid/os/Handler;

    :cond_1
    return-void
.end method

.method private declared-synchronized f()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/TCAgent;->c()Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tendcloud/tenddata/c;->i:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    invoke-direct {p0}, Lcom/tendcloud/tenddata/c;->g()Lcom/tendcloud/tenddata/ah;

    move-result-object v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/tendcloud/tenddata/c;->g:I

    if-le v3, v1, :cond_3

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tendcloud/tenddata/c;->h:Z

    invoke-static {}, Lcom/tendcloud/tenddata/c;->b()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    invoke-static {}, Lcom/tendcloud/tenddata/c;->b()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x5

    const-wide/32 v2, 0x493e0

    invoke-static {v1, v2, v3}, Lcom/tendcloud/tenddata/TCAgent;->a(IJ)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/tendcloud/tenddata/c;->g:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    const-string v0, "TalkingData"

    const-string v1, "Post data to server..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/tendcloud/tenddata/o;->a(Lcom/tendcloud/tenddata/ah;)Z

    move-result v0

    const-string v1, "TalkingData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "server return success:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    iput v1, p0, Lcom/tendcloud/tenddata/c;->g:I

    invoke-direct {p0, v2}, Lcom/tendcloud/tenddata/c;->a(Lcom/tendcloud/tenddata/ah;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/tendcloud/tenddata/TCAgent;->f(J)V

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tendcloud/tenddata/c;->i:J

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/tendcloud/tenddata/c;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tendcloud/tenddata/c;->g:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tendcloud/tenddata/c;->h:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private g()Lcom/tendcloud/tenddata/ah;
    .locals 13

    const/4 v12, 0x2

    const/4 v0, 0x0

    const/4 v2, 0x1

    new-instance v5, Lcom/tendcloud/tenddata/ah;

    invoke-direct {v5}, Lcom/tendcloud/tenddata/ah;-><init>()V

    invoke-static {}, Lcom/tendcloud/tenddata/u;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/tendcloud/tenddata/ah;->a:Ljava/lang/String;

    invoke-static {}, Lcom/tendcloud/tenddata/TCAgent;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/tendcloud/tenddata/ah;->b:Ljava/lang/String;

    invoke-static {}, Lcom/tendcloud/tenddata/TCAgent;->n()Lcom/tendcloud/tenddata/j;

    move-result-object v1

    iput-object v1, v5, Lcom/tendcloud/tenddata/ah;->c:Lcom/tendcloud/tenddata/j;

    invoke-static {}, Lcom/tendcloud/tenddata/TCAgent;->o()Lcom/tendcloud/tenddata/y;

    move-result-object v1

    iput-object v1, v5, Lcom/tendcloud/tenddata/ah;->d:Lcom/tendcloud/tenddata/y;

    sget-object v1, Lcom/tendcloud/tenddata/TCAgent;->f:[[Ljava/lang/Long;

    iput-object v1, v5, Lcom/tendcloud/tenddata/ah;->i:[[Ljava/lang/Long;

    invoke-virtual {v5}, Lcom/tendcloud/tenddata/ah;->a()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v0

    invoke-static {}, Lcom/tendcloud/tenddata/TCAgent;->e()Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Lcom/tendcloud/tenddata/ag;

    invoke-direct {v3}, Lcom/tendcloud/tenddata/ag;-><init>()V

    iput v2, v3, Lcom/tendcloud/tenddata/ag;->a:I

    invoke-static {}, Lcom/tendcloud/tenddata/u;->E()Lcom/tendcloud/tenddata/m;

    move-result-object v4

    iput-object v4, v3, Lcom/tendcloud/tenddata/ag;->c:Lcom/tendcloud/tenddata/m;

    iget-object v4, v5, Lcom/tendcloud/tenddata/ah;->e:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v4, v3, Lcom/tendcloud/tenddata/ag;->a:I

    invoke-static {v4}, Lcom/tendcloud/tenddata/p;->c(I)I

    move-result v4

    iget-object v3, v3, Lcom/tendcloud/tenddata/ag;->c:Lcom/tendcloud/tenddata/m;

    invoke-virtual {v3}, Lcom/tendcloud/tenddata/m;->a()I

    move-result v3

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    move v3, v1

    move v1, v2

    :goto_0
    invoke-static {}, Lcom/tendcloud/tenddata/TCAgent;->c()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/tendcloud/tenddata/q;->a(Landroid/content/Context;)V

    const-string v4, "error_report"

    invoke-static {v4}, Lcom/tendcloud/tenddata/q;->e(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/tendcloud/tenddata/ah;->h:J

    invoke-static {}, Lcom/tendcloud/tenddata/q;->d()Ljava/util/List;

    move-result-object v4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v4, v3

    move v3, v0

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/b;

    add-int/lit8 v3, v3, 0x1

    iget-object v8, v0, Lcom/tendcloud/tenddata/b;->a:Ljava/lang/String;

    iget-wide v9, v5, Lcom/tendcloud/tenddata/ah;->f:J

    invoke-static {v8, v9, v10}, Lcom/tendcloud/tenddata/q;->a(Ljava/lang/String;J)Ljava/util/List;

    move-result-object v8

    iput-object v8, v0, Lcom/tendcloud/tenddata/b;->h:Ljava/util/List;

    iget-object v8, v0, Lcom/tendcloud/tenddata/b;->a:Ljava/lang/String;

    iget-wide v9, v5, Lcom/tendcloud/tenddata/ah;->g:J

    invoke-static {v8, v9, v10}, Lcom/tendcloud/tenddata/q;->b(Ljava/lang/String;J)Ljava/util/List;

    move-result-object v8

    iput-object v8, v0, Lcom/tendcloud/tenddata/b;->i:Ljava/util/List;

    new-instance v8, Lcom/tendcloud/tenddata/ag;

    invoke-direct {v8}, Lcom/tendcloud/tenddata/ag;-><init>()V

    iput v12, v8, Lcom/tendcloud/tenddata/ag;->a:I

    iput-object v0, v8, Lcom/tendcloud/tenddata/ag;->b:Lcom/tendcloud/tenddata/b;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/b;->a()I

    move-result v9

    add-int v10, v9, v4

    const/16 v11, 0x5000

    if-le v10, v11, :cond_2

    if-eq v3, v2, :cond_2

    iput-boolean v2, p0, Lcom/tendcloud/tenddata/c;->h:Z

    :cond_1
    invoke-static {v6}, Lcom/tendcloud/tenddata/q;->a(Ljava/util/List;)J

    move-result-wide v2

    iput-wide v2, v5, Lcom/tendcloud/tenddata/ah;->f:J

    invoke-static {v6}, Lcom/tendcloud/tenddata/q;->b(Ljava/util/List;)J

    move-result-wide v2

    iput-wide v2, v5, Lcom/tendcloud/tenddata/ah;->g:J

    iget-wide v2, v5, Lcom/tendcloud/tenddata/ah;->h:J

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-lez v0, :cond_4

    iget-wide v2, v5, Lcom/tendcloud/tenddata/ah;->h:J

    invoke-static {v2, v3}, Lcom/tendcloud/tenddata/q;->e(J)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/ag;

    iget-object v3, v5, Lcom/tendcloud/tenddata/ah;->e:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    add-int/2addr v4, v9

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v9, v0, Lcom/tendcloud/tenddata/b;->c:I

    if-ne v9, v12, :cond_3

    iget-object v9, v0, Lcom/tendcloud/tenddata/b;->h:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_3

    iget-object v0, v0, Lcom/tendcloud/tenddata/b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    iget-object v0, v5, Lcom/tendcloud/tenddata/ah;->e:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_4
    invoke-static {}, Lcom/tendcloud/tenddata/q;->b()V

    if-nez v1, :cond_5

    iget-object v0, v5, Lcom/tendcloud/tenddata/ah;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_5
    move-object v0, v5

    goto :goto_3

    :cond_6
    move v3, v1

    move v1, v0

    goto/16 :goto_0
.end method


# virtual methods
.method declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/u;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TalkingData"

    const-string v1, "network is disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sget v0, Lcom/tendcloud/tenddata/TCAgent;->j:I

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/tendcloud/tenddata/TCAgent;->g:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tendcloud/tenddata/u;->b()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "TalkingData"

    const-string v1, "wifi is not connected."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget v0, p0, Lcom/tendcloud/tenddata/c;->j:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/tendcloud/tenddata/c;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tendcloud/tenddata/c;->j:I

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/tendcloud/tenddata/TCAgent;->c()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/tendcloud/tenddata/TCAgent;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tendcloud/tenddata/q;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/tendcloud/tenddata/q;->d()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/tendcloud/tenddata/q;->b()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public run()V
    .locals 3

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    :try_start_1
    iget v0, p0, Lcom/tendcloud/tenddata/c;->j:I

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tendcloud/tenddata/u;->a()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    :try_start_3
    iget v0, p0, Lcom/tendcloud/tenddata/c;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tendcloud/tenddata/c;->j:I

    invoke-direct {p0}, Lcom/tendcloud/tenddata/c;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_3
    iget-boolean v0, p0, Lcom/tendcloud/tenddata/c;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    const-wide/16 v1, 0x2710

    invoke-static {v0, v1, v2}, Lcom/tendcloud/tenddata/TCAgent;->a(IJ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tendcloud/tenddata/c;->h:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    return-void

    :catch_2
    move-exception v0

    goto :goto_1
.end method
