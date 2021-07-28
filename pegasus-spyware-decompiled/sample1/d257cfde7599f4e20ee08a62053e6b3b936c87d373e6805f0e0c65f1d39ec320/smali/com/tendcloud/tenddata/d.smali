.class final Lcom/tendcloud/tenddata/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final a:Ljava/lang/String; = "session_id"

.field public static final b:Ljava/lang/String; = "start_time"

.field public static final c:Ljava/lang/String; = "duration"

.field public static final d:Ljava/lang/String; = "is_launch"

.field public static final e:Ljava/lang/String; = "interval"

.field public static final f:Ljava/lang/String; = "is_connected"

.field public static final g:Ljava/lang/String; = "session"

.field public static final h:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "session_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "start_time"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "is_launch"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "interval"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "is_connected"

    aput-object v2, v0, v1

    sput-object v0, Lcom/tendcloud/tenddata/d;->h:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE session (_id INTEGER PRIMARY KEY autoincrement,session_id TEXT,start_time LONG,duration INTEGER,is_launch INTEGER,interval LONG, is_connected INTEGER)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static final b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS session"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
