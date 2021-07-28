.class public Lcom/xxGameAssistant/pao/MTApplication;
.super Landroid/app/Application;
.source "MTApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xxGameAssistant/pao/MTApplication$InstallerThread;,
        Lcom/xxGameAssistant/pao/MTApplication$MyThread;
    }
.end annotation


# static fields
.field public static mChannelString:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mCheckUpdateURL:Ljava/lang/String; = null

.field public static mConnectTimeout:I = 0x0

.field public static final mDefTipsText:Ljava/lang/String; = "\u5404\u4f4d\u53c9\u70e7\uff0c\n\t\t\u611f\u8c22\u4f7f\u7528\u53c9\u53c9\u6e38\u620f\u52a9\u624b\uff0c\u5929\u5929\u9177\u8dd1\u63d2\u4ef6\u6838\u5fc3\u529f\u80fd\uff1a\n\t\t\t1.\u65e0\u9650\u51b2\u523a:\u81ea\u5b9a\u4e494\u767e\u81f3100\u4e07\u7c73\u98de\u884c\u8ddd\u79bb\uff0c\u514d\u9053\u5177\uff0c\u505a\u5230\u771f\u6b63\u7684\u4e00\u98de\u51b2\u5929\uff01\n\t\t\t2.bonus\u5956\u52b1\u52a0\u500d:\u7528\u6237\u81ea\u7531\u9009\u62e9\u5f97\u5206\u52a0\u6210\u500d\u6570\uff0c\u5f97\u5206\u591a\u591a\uff01\n\t\t\u8bf4\u660e\uff1a\u672c\u63d2\u4ef6\u76ee\u524d\u53ea\u652f\u6301\u5fae\u4fe1\u6e20\u9053\u76841.0.6.0\u7248\u5929\u5929\u9177\u8dd1\u3002\n\t\t\u5e0c\u671b\u53c9\u70e7\u4eec\u6301\u7eed\u5173\u6ce8\u53c9\u53c9\uff0c\u5efa\u8bae\u3001bug\u968f\u65f6\u53cd\u9988\uff0c\u53c9\u53c9\u7684\u6210\u957f\u9700\u8981\u5404\u4f4d\u53c9\u70e7\u7684\u5e2e\u52a9\uff0c\u505a\u6700\u597d\u7684\u6e38\u620f\u63d2\u4ef6\u3002\n\t\t\u65b0\u6d6a\u5fae\u535a\uff1a@\u53c9\u53c9\u6e38\u620f\u52a9\u624b\n\t\tBUG\u53cd\u9988QQ\uff1a1068071192\n\t\t\u5b98\u65b9\u7f51\u7ad9\uff1awww.xxzhushou.com \n\t\t\u4f7f\u7528\u63d2\u4ef6\u4e00\u5b9a\u8981\u6388\u4e88root\u6743\u9650\n"

.field public static mIsInstallerOk:Z

.field public static mIsNewestVersion:Z

.field public static mIsRoot:Z

.field public static mPackageString:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mPackageURL:Ljava/lang/String;

.field public static mReadTimeout:I

.field public static mTipsText:Ljava/lang/String;

.field public static mTipsURL:Ljava/lang/String;

.field public static me:Lcom/xxGameAssistant/pao/MTApplication;


# instance fields
.field private volatile mHandler:Landroid/os/Handler;

.field private mtPackageName_chs:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x2710

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 25
    sput-object v0, Lcom/xxGameAssistant/pao/MTApplication;->mPackageString:Ljava/util/ArrayList;

    .line 26
    sput-object v0, Lcom/xxGameAssistant/pao/MTApplication;->mChannelString:Ljava/util/ArrayList;

    .line 28
    sput-object v0, Lcom/xxGameAssistant/pao/MTApplication;->mTipsText:Ljava/lang/String;

    .line 41
    const-string v0, "      ."

    sput-object v0, Lcom/xxGameAssistant/pao/MTApplication;->mCheckUpdateURL:Ljava/lang/String;

    .line 42
    const-string v0, "  ."

    sput-object v0, Lcom/xxGameAssistant/pao/MTApplication;->mTipsURL:Ljava/lang/String;

    .line 44
    const-string v0, "           ."

    sput-object v0, Lcom/xxGameAssistant/pao/MTApplication;->mPackageURL:Ljava/lang/String;

    .line 52
    sput v2, Lcom/xxGameAssistant/pao/MTApplication;->mConnectTimeout:I

    .line 53
    sput v2, Lcom/xxGameAssistant/pao/MTApplication;->mReadTimeout:I

    .line 55
    sput-boolean v1, Lcom/xxGameAssistant/pao/MTApplication;->mIsNewestVersion:Z

    .line 56
    sput-boolean v1, Lcom/xxGameAssistant/pao/MTApplication;->mIsRoot:Z

    .line 57
    sput-boolean v1, Lcom/xxGameAssistant/pao/MTApplication;->mIsInstallerOk:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xxGameAssistant/pao/MTApplication;->mHandler:Landroid/os/Handler;

    .line 69
    const-string v0, "com.tencent.lian"

    iput-object v0, p0, Lcom/xxGameAssistant/pao/MTApplication;->mtPackageName_chs:Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xxGameAssistant/pao/MTApplication;->mIsNewestVersion:Z

    .line 63
    sput-object p0, Lcom/xxGameAssistant/pao/MTApplication;->me:Lcom/xxGameAssistant/pao/MTApplication;

    .line 66
    return-void
.end method

.method static synthetic access$0(Lcom/xxGameAssistant/pao/MTApplication;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MTApplication;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/xxGameAssistant/pao/MTApplication;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/xxGameAssistant/pao/MTApplication;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static unique()Lcom/xxGameAssistant/pao/MTApplication;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/xxGameAssistant/pao/MTApplication;->me:Lcom/xxGameAssistant/pao/MTApplication;

    return-object v0
.end method


# virtual methods
.method public getMTPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MTApplication;->mtPackageName_chs:Ljava/lang/String;

    return-object v0
.end method

.method public getThread()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/xxGameAssistant/pao/MTApplication$InstallerThread;

    invoke-direct {v0, p0}, Lcom/xxGameAssistant/pao/MTApplication$InstallerThread;-><init>(Lcom/xxGameAssistant/pao/MTApplication;)V

    invoke-virtual {v0}, Lcom/xxGameAssistant/pao/MTApplication$InstallerThread;->start()V

    .line 94
    new-instance v0, Lcom/xxGameAssistant/pao/MTApplication$MyThread;

    invoke-direct {v0, p0}, Lcom/xxGameAssistant/pao/MTApplication$MyThread;-><init>(Lcom/xxGameAssistant/pao/MTApplication;)V

    return-object v0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/xxGameAssistant/pao/MTApplication;->mHandler:Landroid/os/Handler;

    .line 90
    return-void
.end method

.method public setMTPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "MTPackageName"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/xxGameAssistant/pao/MTApplication;->mtPackageName_chs:Ljava/lang/String;

    .line 75
    return-void
.end method
