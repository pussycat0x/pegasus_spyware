.class public final Lcom/tendcloud/tenddata/TCAgent;
.super Ljava/lang/Object;


# static fields
.field private static final A:I = 0x1388

.field private static final B:I = 0x2

.field private static C:J = 0x0L

.field private static final D:I = 0x1

.field private static final E:I = 0x2

.field private static final F:I = 0x3

.field private static final G:I = 0x4

.field private static volatile H:Z = false

.field private static I:Ljava/lang/String; = null

.field private static J:Z = false

.field private static K:Landroid/content/Context; = null

.field private static L:Ljava/lang/String; = null

.field private static M:Ljava/lang/String; = null

.field private static N:J = 0x0L

.field private static O:Z = false

.field private static P:I = 0x0

.field private static Q:Z = false

.field protected static final a:I = 0x493e0

.field protected static final b:I = 0x0

.field protected static final c:I = 0x5

.field protected static final d:I = 0x6

.field protected static final e:I = 0x7

.field static f:[[Ljava/lang/Long; = null

.field static g:Z = false

.field static final h:Ljava/lang/String; = "TalkingData"

.field static final i:Z = false

.field static j:I = 0x0

.field private static final k:Ljava/lang/String; = "Android+TD+V1.0.11"

.field private static final l:Ljava/lang/String; = "TDpref.profile.key"

.field private static final m:Ljava/lang/String; = "TDpref.session.key"

.field private static final n:Ljava/lang/String; = "TDpref.lastactivity.key"

.field private static final o:Ljava/lang/String; = "TDpref.start.key"

.field private static final p:Ljava/lang/String; = "TDpref.lastsessionstart.key"

.field private static final q:Ljava/lang/String; = "TDpref.init.key"

.field private static final r:Ljava/lang/String; = "TDpref.actstart.key"

.field private static final s:Ljava/lang/String; = "TDpref.end.key"

.field private static final t:Ljava/lang/String; = "TDpref.sendtime.key"

.field private static final u:Ljava/lang/String; = "TDpref.apps_send_time.key"

.field private static final v:Ljava/lang/String; = "TD_APP_ID"

.field private static final w:Ljava/lang/String; = "TD_CHANNEL_ID"

.field private static final x:J = 0x1eL

.field private static final y:I = 0x3e8

.field private static final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tendcloud/tenddata/TCAgent;->C:J

    sput v2, Lcom/tendcloud/tenddata/TCAgent;->j:I

    sput-boolean v2, Lcom/tendcloud/tenddata/TCAgent;->H:Z

    const-string v0, "TalkingData"

    sput-object v0, Lcom/tendcloud/tenddata/TCAgent;->I:Ljava/lang/String;

    sput-boolean v2, Lcom/tendcloud/tenddata/TCAgent;->J:Z

    sput-boolean v2, Lcom/tendcloud/tenddata/TCAgent;->O:Z

    sput v2, Lcom/tendcloud/tenddata/TCAgent;->P:I

    sput-boolean v2, Lcom/tendcloud/tenddata/TCAgent;->Q:Z

    invoke-static {}, Lcom/tendcloud/tenddata/TCAgent;->p()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method static a()V
    .locals 1

    invoke-static {}, Lcom/tendcloud/tenddata/TCAgent;->u()V

    const/4 v0, 0x0

    check-cast v0, [[Ljava/lang/Long;

    sput-object v0, Lcom/tendcloud/tenddata/TCAgent;->f:[[Ljava/lang/Long;

    return-void
.end method

.method public static a(I)V
    .locals 0

    sput p0, Lcom/tendcloud/tenddata/TCAgent;->j:I

    return-void
.end method

.method public static a(IJ)V
    .locals 2

    invoke-static {}, Lcom/tendcloud/tenddata/c;->b()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/c;->b()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static a(J)V
    .locals 1

    const-string v0, "TDpref.start.key"

    invoke-static {v0, p0, p1}, Lcom/tendcloud/tenddata/TCAgent;->a(Ljava/lang/String;J)V

    return-void
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/tendcloud/tenddata/ad;

    invoke-direct {v0, p2, p1, p0}, Lcom/tendcloud/tenddata/ad;-><init>(ILjava/lang/String;Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/k;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static a(Landroid/os/Message;)V
    .locals 8

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/TCAgent;->c()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tendcloud/tenddata/q;->a(Landroid/content/Context;)V

    iget v2, p0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {}, Lcom/tendcloud/tenddata/q;->b()V

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/tendcloud/tenddata/c;->a()Lcom/tendcloud/tenddata/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/c;->c()V

    sget v1, Lcom/tendcloud/tenddata/TCAgent;->P:I

    if-ge v1, v6, :cond_1

    if-nez v0, :cond_1

    const/4 v0, 0x5

    const-wide/32 v1, 0x493e0

    invoke-static {v0, v1, v2}, Lcom/tendcloud/tenddata/TCAgent;->a(IJ)V

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    sget v0, Lcom/tendcloud/tenddata/TCAgent;->P:I

    if-lt v0, v6, :cond_2

    const/4 v0, 0x5

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lcom/tendcloud/tenddata/TCAgent;->a(IJ)V

    :cond_2
    const/4 v0, 0x0

    sput v0, Lcom/tendcloud/tenddata/TCAgent;->P:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tendcloud/tenddata/TCAgent;->O:Z

    invoke-static {p0}, Lcom/tendcloud/tenddata/TCAgent;->b(Landroid/os/Message;)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/tendcloud/tenddata/TCAgent;->C:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    invoke-static {}, Lcom/tendcloud/tenddata/c;->b()Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/tendcloud/tenddata/TCAgent;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/tendcloud/tenddata/TCAgent;->a(IJ)V

    move v0, v1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tendcloud/tenddata/TCAgent;->O:Z

    invoke-static {p0}, Lcom/tendcloud/tenddata/TCAgent;->c(Landroid/os/Message;)V

    const/4 v0, 0x6

    const-wide/16 v2, 0x1388

    invoke-static {v0, v2, v3}, Lcom/tendcloud/tenddata/TCAgent;->a(IJ)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sput-wide v2, Lcom/tendcloud/tenddata/TCAgent;->C:J

    move v0, v1

    goto :goto_0

    :pswitch_2
    invoke-static {p0}, Lcom/tendcloud/tenddata/TCAgent;->d(Landroid/os/Message;)V

    move v0, v1

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tendcloud/tenddata/a;

    iget-wide v2, v0, Lcom/tendcloud/tenddata/a;->c:J

    iget-object v4, v0, Lcom/tendcloud/tenddata/a;->d:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/tendcloud/tenddata/q;->a(JLjava/lang/String;)J

    iget-wide v2, v0, Lcom/tendcloud/tenddata/a;->c:J

    invoke-static {v2, v3}, Lcom/tendcloud/tenddata/TCAgent;->e(J)V

    move v0, v1

    goto :goto_0

    :pswitch_4
    sget-boolean v2, Lcom/tendcloud/tenddata/TCAgent;->O:Z

    if-nez v2, :cond_4

    sget v2, Lcom/tendcloud/tenddata/TCAgent;->P:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/tendcloud/tenddata/TCAgent;->P:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    move v7, v1

    move v1, v0

    move v0, v7

    goto/16 :goto_0

    :pswitch_5
    move v1, v0

    goto/16 :goto_0

    :pswitch_6
    move v7, v1

    move v1, v0

    move v0, v7

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static a(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "TDpref.session.key"

    invoke-static {v0, p0}, Lcom/tendcloud/tenddata/TCAgent;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;J)V
    .locals 1

    sget-object v0, Lcom/tendcloud/tenddata/TCAgent;->K:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/tendcloud/tenddata/TCAgent;->K:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;[Ljava/lang/StackTraceElement;Ljava/lang/Throwable;I)V
    .locals 7

    const/16 v0, 0x32

    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    array-length v1, v4

    add-int/lit8 v2, v1, -0x1

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    move v6, v1

    move v1, v2

    move v2, v6

    :goto_0
    if-ltz v1, :cond_0

    if-ltz v2, :cond_0

    aget-object v3, v4, v1

    aget-object v5, p1, v2

    invoke-virtual {v3, v5}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v1, -0x1

    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move v1, v3

    goto :goto_0

    :cond_0
    if-le v1, v0, :cond_1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caused by : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_2
    if-gt v1, v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v4, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x5

    if-lt p3, v0, :cond_4

    :cond_3
    :goto_3
    return-void

    :cond_4
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, p3, 0x1

    invoke-static {p0, v4, p2, v0}, Lcom/tendcloud/tenddata/TCAgent;->a(Ljava/lang/StringBuilder;[Ljava/lang/StackTraceElement;Ljava/lang/Throwable;I)V

    goto :goto_3
.end method

.method static synthetic a(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/tendcloud/tenddata/TCAgent;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/tendcloud/tenddata/TCAgent;->g:Z

    return-void
.end method

.method static synthetic b(I)I
    .locals 0

    sput p0, Lcom/tendcloud/tenddata/TCAgent;->P:I

    return p0
.end method

.method private static b(Ljava/lang/String;J)J
    .locals 2

    sget-object v0, Lcom/tendcloud/tenddata/TCAgent;->K:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tendcloud/tenddata/TCAgent;->K:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static b(J)V
    .locals 1

    const-string v0, "TDpref.lastsessionstart.key"

    invoke-static {v0, p0, p1}, Lcom/tendcloud/tenddata/TCAgent;->a(Ljava/lang/String;J)V

    return-void
.end method

.method static b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "TDpref.lastactivity.key"

    invoke-static {v0, p0}, Lcom/tendcloud/tenddata/TCAgent;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Ljava/lang/Throwable;)V
    .locals 6

    sget-boolean v0, Lcom/tendcloud/tenddata/TCAgent;->H:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/tendcloud/tenddata/a;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/a;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tendcloud/tenddata/a;->c:J

    invoke-static {p0}, Lcom/tendcloud/tenddata/TCAgent;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tendcloud/tenddata/a;->d:Ljava/lang/String;

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_2
    const/4 v4, 0x3

    if-ge v0, v4, :cond_2

    array-length v4, v2

    if-ge v0, v4, :cond_2

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tendcloud/tenddata/a;->e:Ljava/lang/String;

    invoke-static {}, Lcom/tendcloud/tenddata/c;->b()Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/c;->b()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method static b(Z)V
    .locals 3

    const-string v2, "TDpref.profile.key"

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    invoke-static {v2, v0, v1}, Lcom/tendcloud/tenddata/TCAgent;->a(Ljava/lang/String;J)V

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static b()Z
    .locals 6

    const-string v0, "TDpref.apps_send_time.key"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/tendcloud/tenddata/TCAgent;->b(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/os/Message;)Z
    .locals 15

    const/4 v5, 0x0

    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lcom/tendcloud/tenddata/TCAgent;->h()J

    move-result-wide v7

    invoke-static {}, Lcom/tendcloud/tenddata/TCAgent;->l()J

    move-result-wide v3

    cmp-long v0, v3, v7

    if-lez v0, :cond_3

    move-wide v11, v3

    :goto_0
    sub-long v3, v11, v7

    const-wide/16 v7, 0x1f4

    cmp-long v0, v3, v7

    if-gez v0, :cond_0

    const-wide/16 v3, -0x3e8

    :cond_0
    invoke-static {}, Lcom/tendcloud/tenddata/TCAgent;->g()Ljava/lang/String;

    move-result-object v8

    sub-long v11, v1, v11

    const-wide/16 v13, 0x7530

    cmp-long v0, v11, v13

    if-lez v0, :cond_5

    sget-object v0, Lcom/tendcloud/tenddata/TCAgent;->M:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tendcloud/tenddata/TCAgent;->M:Ljava/lang/String;

    long-to-int v3, v3

    div-int/lit16 v3, v3, 0x3e8

    invoke-static {v0, v3}, Lcom/tendcloud/tenddata/q;->a(Ljava/lang/String;I)V

    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/TCAgent;->M:Ljava/lang/String;

    sget-object v0, Lcom/tendcloud/tenddata/TCAgent;->M:Ljava/lang/String;

    invoke-static {v0}, Lcom/tendcloud/tenddata/TCAgent;->a(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/tendcloud/tenddata/TCAgent;->a(J)V

    invoke-static {}, Lcom/tendcloud/tenddata/TCAgent;->i()J

    move-result-wide v7

    sub-long v3, v1, v7

    const-wide/16 v11, 0x0

    cmp-long v0, v11, v7

    if-nez v0, :cond_2

    const-wide/16 v3, 0x0

    :cond_2
    invoke-static {v1, v2}, Lcom/tendcloud/tenddata/TCAgent;->b(J)V

    invoke-static {}, Lcom/tendcloud/tenddata/u;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v5, 0x1

    :goto_1
    sget-object v0, Lcom/tendcloud/tenddata/TCAgent;->M:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/tendcloud/tenddata/q;->a(Ljava/lang/String;JJI)J

    const-string v8, ""

    const/4 v0, 0x1

    :goto_2
    invoke-static {v1, v2}, Lcom/tendcloud/tenddata/TCAgent;->d(J)V

    invoke-static {v6}, Lcom/tendcloud/tenddata/TCAgent;->b(Ljava/lang/String;)V

    sget-object v3, Lcom/tendcloud/tenddata/TCAgent;->M:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v4, v6

    move-wide v5, v1

    invoke-static/range {v3 .. v10}, Lcom/tendcloud/tenddata/q;->a(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/tendcloud/tenddata/TCAgent;->N:J

    return v0

    :cond_3
    move-wide v11, v7

    goto :goto_0

    :cond_4
    const/4 v5, -0x1

    goto :goto_1

    :cond_5
    move v0, v5

    goto :goto_2
.end method

.method protected static c()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/tendcloud/tenddata/TCAgent;->K:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/tendcloud/tenddata/TCAgent;->M:Ljava/lang/String;

    return-object p0
.end method

.method private static c(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 6

    const/16 v0, 0x32

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    array-length v1, v3

    if-le v1, v0, :cond_0

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    array-length v0, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-static {v2, v3, v0, v1}, Lcom/tendcloud/tenddata/TCAgent;->a(Ljava/lang/StringBuilder;[Ljava/lang/StackTraceElement;Ljava/lang/Throwable;I)V

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static c(J)V
    .locals 1

    const-string v0, "TDpref.init.key"

    invoke-static {v0, p0, p1}, Lcom/tendcloud/tenddata/TCAgent;->a(Ljava/lang/String;J)V

    return-void
.end method

.method private static c(Landroid/os/Message;)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/tendcloud/tenddata/TCAgent;->N:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    sget-wide v4, Lcom/tendcloud/tenddata/TCAgent;->N:J

    invoke-static {v4, v5, v2, v3}, Lcom/tendcloud/tenddata/q;->a(JJ)V

    :cond_0
    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/TCAgent;->e(J)V

    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tendcloud/tenddata/TCAgent;->L:Ljava/lang/String;

    return-object v0
.end method

.method static d(J)V
    .locals 1

    const-string v0, "TDpref.actstart.key"

    invoke-static {v0, p0, p1}, Lcom/tendcloud/tenddata/TCAgent;->a(Ljava/lang/String;J)V

    return-void
.end method

.method private static d(Landroid/os/Message;)V
    .locals 6

    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/tendcloud/tenddata/a;

    sget-object v0, Lcom/tendcloud/tenddata/TCAgent;->M:Ljava/lang/String;

    iget-object v1, v5, Lcom/tendcloud/tenddata/a;->a:Ljava/lang/String;

    iget-object v2, v5, Lcom/tendcloud/tenddata/a;->b:Ljava/lang/String;

    iget-wide v3, v5, Lcom/tendcloud/tenddata/a;->f:J

    iget-object v5, v5, Lcom/tendcloud/tenddata/a;->g:Ljava/util/Map;

    invoke-static/range {v0 .. v5}, Lcom/tendcloud/tenddata/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)Z

    return-void
.end method

.method static e(J)V
    .locals 1

    const-string v0, "TDpref.end.key"

    invoke-static {v0, p0, p1}, Lcom/tendcloud/tenddata/TCAgent;->a(Ljava/lang/String;J)V

    return-void
.end method

.method static e()Z
    .locals 4

    const-string v0, "TDpref.profile.key"

    const-wide/16 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/tendcloud/tenddata/TCAgent;->b(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static f()Ljava/lang/String;
    .locals 2

    const-string v0, "TDpref.session.key"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/TCAgent;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static f(J)V
    .locals 1

    const-string v0, "TDpref.sendtime.key"

    invoke-static {v0, p0, p1}, Lcom/tendcloud/tenddata/TCAgent;->a(Ljava/lang/String;J)V

    return-void
.end method

.method static g()Ljava/lang/String;
    .locals 2

    const-string v0, "TDpref.lastactivity.key"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/TCAgent;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-class v1, Lcom/tendcloud/tenddata/TCAgent;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/u;->a:Landroid/content/Context;

    invoke-static {}, Lcom/tendcloud/tenddata/u;->e()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static h()J
    .locals 3

    const-string v0, "TDpref.start.key"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/tendcloud/tenddata/TCAgent;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static i()J
    .locals 3

    const-string v0, "TDpref.lastsessionstart.key"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/tendcloud/tenddata/TCAgent;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/TCAgent;->K:Landroid/content/Context;

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/TCAgent;->K:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/tendcloud/tenddata/TCAgent;->K:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "TD_APP_ID"

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/TCAgent;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TD_CHANNEL_ID"

    invoke-static {v0, v2}, Lcom/tendcloud/tenddata/TCAgent;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "TalkingData"

    const-string v1, "TD_APP_ID not found in AndroidManifest.xml!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v2, "TalkingData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TD_APP_ID in AndroidManifest.xml is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "TalkingData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TD_CHANNEL_ID in AndroidManifest.xml is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    const-string v0, "TalkingData"

    :cond_1
    invoke-static {p0, v1, v0}, Lcom/tendcloud/tenddata/TCAgent;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TalkingData"

    const-string v2, "Failed to load meta-data"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-class v1, Lcom/tendcloud/tenddata/TCAgent;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/TCAgent;->H:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/TCAgent;->K:Landroid/content/Context;

    sget-object v0, Lcom/tendcloud/tenddata/TCAgent;->K:Landroid/content/Context;

    sput-object v0, Lcom/tendcloud/tenddata/u;->a:Landroid/content/Context;

    const-string v0, "android.permission.INTERNET"

    invoke-static {v0}, Lcom/tendcloud/tenddata/u;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TalkingData"

    const-string v2, "stop working...application do not have permission to send data, you must add <uses-permission android:name=\"android.permission.INTERNET\"/> to your AndroidManifest.xml."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tendcloud/tenddata/TCAgent;->H:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_2
    sput-object p1, Lcom/tendcloud/tenddata/TCAgent;->L:Ljava/lang/String;

    sput-object p2, Lcom/tendcloud/tenddata/TCAgent;->I:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_2

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v2, Lcom/tendcloud/tenddata/ae;

    invoke-direct {v2}, Lcom/tendcloud/tenddata/ae;-><init>()V

    invoke-virtual {v0, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tendcloud/tenddata/TCAgent;->Q:Z

    :cond_2
    new-instance v0, Lcom/tendcloud/tenddata/ac;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/ac;-><init>()V

    invoke-static {v0}, Lcom/tendcloud/tenddata/k;->a(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method static j()J
    .locals 3

    const-string v0, "TDpref.init.key"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/tendcloud/tenddata/TCAgent;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static k()J
    .locals 3

    const-string v0, "TDpref.actstart.key"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/tendcloud/tenddata/TCAgent;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static l()J
    .locals 3

    const-string v0, "TDpref.end.key"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/tendcloud/tenddata/TCAgent;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static m()J
    .locals 3

    const-string v0, "TDpref.sendtime.key"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/tendcloud/tenddata/TCAgent;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static n()Lcom/tendcloud/tenddata/j;
    .locals 3

    sget-object v0, Lcom/tendcloud/tenddata/TCAgent;->K:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/tendcloud/tenddata/j;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/j;-><init>()V

    sget-object v1, Lcom/tendcloud/tenddata/TCAgent;->K:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tendcloud/tenddata/j;->a:Ljava/lang/String;

    invoke-static {}, Lcom/tendcloud/tenddata/u;->t()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tendcloud/tenddata/j;->b:Ljava/lang/String;

    invoke-static {}, Lcom/tendcloud/tenddata/u;->s()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tendcloud/tenddata/j;->c:Ljava/lang/String;

    invoke-static {}, Lcom/tendcloud/tenddata/TCAgent;->j()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tendcloud/tenddata/j;->d:J

    const-string v1, "Android+TD+V1.0.11"

    iput-object v1, v0, Lcom/tendcloud/tenddata/j;->e:Ljava/lang/String;

    sget-object v1, Lcom/tendcloud/tenddata/TCAgent;->I:Ljava/lang/String;

    iput-object v1, v0, Lcom/tendcloud/tenddata/j;->f:Ljava/lang/String;

    invoke-static {}, Lcom/tendcloud/tenddata/u;->w()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tendcloud/tenddata/j;->h:J

    invoke-static {}, Lcom/tendcloud/tenddata/u;->x()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tendcloud/tenddata/j;->i:J

    goto :goto_0
.end method

.method static o()Lcom/tendcloud/tenddata/y;
    .locals 10

    const/4 v1, 0x0

    const/16 v9, 0x2c

    sget-object v0, Lcom/tendcloud/tenddata/TCAgent;->K:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v2, Lcom/tendcloud/tenddata/y;

    invoke-direct {v2}, Lcom/tendcloud/tenddata/y;-><init>()V

    invoke-static {}, Lcom/tendcloud/tenddata/u;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tendcloud/tenddata/y;->a:Ljava/lang/String;

    invoke-static {}, Lcom/tendcloud/tenddata/u;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tendcloud/tenddata/y;->b:Ljava/lang/String;

    invoke-static {}, Lcom/tendcloud/tenddata/u;->r()Ljava/util/List;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v0}, Landroid/location/Location;->getSpeed()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    int-to-short v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_5

    :cond_1
    :goto_2
    move-object v1, v0

    goto/16 :goto_1

    :cond_2
    new-instance v0, Lcom/tendcloud/tenddata/f;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/f;-><init>()V

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    iput-wide v4, v0, Lcom/tendcloud/tenddata/f;->b:D

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    iput-wide v4, v0, Lcom/tendcloud/tenddata/f;->a:D

    :cond_3
    iput-object v0, v2, Lcom/tendcloud/tenddata/y;->c:Lcom/tendcloud/tenddata/f;

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    iput-object v0, v2, Lcom/tendcloud/tenddata/y;->d:Ljava/lang/String;

    invoke-static {}, Lcom/tendcloud/tenddata/u;->C()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tendcloud/tenddata/y;->e:Ljava/lang/String;

    invoke-static {}, Lcom/tendcloud/tenddata/u;->A()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tendcloud/tenddata/y;->f:Ljava/lang/String;

    invoke-static {}, Lcom/tendcloud/tenddata/u;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tendcloud/tenddata/y;->g:Ljava/lang/String;

    invoke-static {}, Lcom/tendcloud/tenddata/u;->B()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tendcloud/tenddata/y;->h:Ljava/lang/String;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    div-int/lit8 v0, v0, 0x3c

    div-int/lit8 v0, v0, 0x3c

    iput v0, v2, Lcom/tendcloud/tenddata/y;->i:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tendcloud/tenddata/y;->j:Ljava/lang/String;

    invoke-static {}, Lcom/tendcloud/tenddata/u;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_3
    iput v0, v2, Lcom/tendcloud/tenddata/y;->k:I

    invoke-static {}, Lcom/tendcloud/tenddata/u;->D()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tendcloud/tenddata/y;->l:Ljava/lang/String;

    invoke-static {}, Lcom/tendcloud/tenddata/u;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tendcloud/tenddata/y;->o:Ljava/lang/String;

    invoke-static {}, Lcom/tendcloud/tenddata/u;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tendcloud/tenddata/y;->n:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tendcloud/tenddata/y;->p:Ljava/lang/String;

    invoke-static {}, Lcom/tendcloud/tenddata/u;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tendcloud/tenddata/y;->t:Ljava/lang/String;

    invoke-static {}, Lcom/tendcloud/tenddata/u;->q()Lcom/tendcloud/tenddata/v;

    move-result-object v0

    iget-object v1, v0, Lcom/tendcloud/tenddata/v;->c:Ljava/lang/String;

    iput-object v1, v2, Lcom/tendcloud/tenddata/y;->u:Ljava/lang/String;

    iget v1, v0, Lcom/tendcloud/tenddata/v;->d:I

    iput v1, v2, Lcom/tendcloud/tenddata/y;->v:I

    iget v0, v0, Lcom/tendcloud/tenddata/v;->e:I

    iput v0, v2, Lcom/tendcloud/tenddata/y;->w:I

    move-object v1, v2

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto/16 :goto_2
.end method

.method public static onError(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/tendcloud/tenddata/aa;

    invoke-direct {v0, p1}, Lcom/tendcloud/tenddata/aa;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/k;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/tendcloud/tenddata/TCAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/tendcloud/tenddata/TCAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    new-instance v0, Lcom/tendcloud/tenddata/x;

    invoke-direct {v0, p1, p2, p3}, Lcom/tendcloud/tenddata/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/k;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onPageEnd(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/tendcloud/tenddata/TCAgent;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method

.method public static onPageStart(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/tendcloud/tenddata/TCAgent;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method

.method public static onPause(Landroid/app/Activity;)V
    .locals 1

    sget-boolean v0, Lcom/tendcloud/tenddata/TCAgent;->Q:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/TCAgent;->onPageEnd(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static onResume(Landroid/app/Activity;)V
    .locals 1

    sget-boolean v0, Lcom/tendcloud/tenddata/TCAgent;->Q:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/TCAgent;->onPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static p()V
    .locals 1

    new-instance v0, Lcom/tendcloud/tenddata/i;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/i;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method static synthetic q()Z
    .locals 1

    sget-boolean v0, Lcom/tendcloud/tenddata/TCAgent;->H:Z

    return v0
.end method

.method static synthetic r()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tendcloud/tenddata/TCAgent;->L:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic s()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tendcloud/tenddata/TCAgent;->M:Ljava/lang/String;

    return-object v0
.end method

.method public static setReportUncaughtExceptions(Z)V
    .locals 0

    sput-boolean p0, Lcom/tendcloud/tenddata/TCAgent;->J:Z

    return-void
.end method

.method static synthetic t()Z
    .locals 1

    sget-boolean v0, Lcom/tendcloud/tenddata/TCAgent;->J:Z

    return v0
.end method

.method private static u()V
    .locals 5

    const-string v0, "TDpref.apps_send_time.key"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    div-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/tendcloud/tenddata/TCAgent;->a(Ljava/lang/String;J)V

    return-void
.end method
