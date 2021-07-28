.class public Lcom/xxGameAssistant/pao/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xxGameAssistant/pao/MainActivity$MyThread;
    }
.end annotation


# static fields
.field static GameInjectionWatcherIntervalInMS:I = 0x0

.field static GameLaunchWatcherIntervalInMS:I = 0x0

.field public static final MSG_APK_NOT_FOUND:I = 0x6

.field public static final MSG_INSTALLER_OK:I = 0x8

.field public static final MSG_NET_ERROR:I = 0x5

.field public static final MSG_NEW_VERSION:I = 0x1

.field public static final MSG_NO_NEW_VERSION:I = 0x2

.field public static final MSG_SET_GAMEMODE_OK:I = 0x9

.field public static final MSG_SOCKET_TIMEOUT:I = 0x0

.field public static final MSG_TIPS_ERROR:I = 0x4

.field public static final MSG_TIPS_OK:I = 0x3

.field public static final MSG_VERSION_NOT_FOUND:I = 0x7


# instance fields
.field private checkUpdate:Ljava/lang/Thread;

.field private mAnnounceTextView:Landroid/widget/TextView;

.field private mAnnouncementText:Ljava/lang/String;

.field private mBonus:Landroid/widget/EditText;

.field private mChannelString:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckUpdate:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field private mIsAbortNewVewsion:Z

.field private mIsHasMT:Z

.field private mIsHasNewVersion:Z

.field private mIsInstallOK:Z

.field private mJNIHelper:Lcom/xxGameAssistant/utility/JNIHelper;

.field private mPackageHelper:Lcom/xxGameAssistant/utility/PackageHelper;

.field private mPackageString:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRushDistance:Landroid/widget/EditText;

.field private mSelectedMT:Landroid/widget/TextView;

.field private mSpinner:Landroid/widget/Spinner;

.field private mStartButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    sput v0, Lcom/xxGameAssistant/pao/MainActivity;->GameInjectionWatcherIntervalInMS:I

    .line 69
    const/16 v0, 0x3e8

    sput v0, Lcom/xxGameAssistant/pao/MainActivity;->GameLaunchWatcherIntervalInMS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    iput-object v1, p0, Lcom/xxGameAssistant/pao/MainActivity;->mSpinner:Landroid/widget/Spinner;

    .line 57
    iput-object v1, p0, Lcom/xxGameAssistant/pao/MainActivity;->mSelectedMT:Landroid/widget/TextView;

    .line 58
    iput-object v1, p0, Lcom/xxGameAssistant/pao/MainActivity;->mAnnounceTextView:Landroid/widget/TextView;

    .line 59
    iput-object v1, p0, Lcom/xxGameAssistant/pao/MainActivity;->mStartButton:Landroid/widget/Button;

    .line 60
    iput-object v1, p0, Lcom/xxGameAssistant/pao/MainActivity;->mCheckUpdate:Landroid/widget/Button;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity;->mPackageString:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity;->mChannelString:Ljava/util/ArrayList;

    .line 63
    iput-boolean v2, p0, Lcom/xxGameAssistant/pao/MainActivity;->mIsHasNewVersion:Z

    .line 64
    iput-boolean v2, p0, Lcom/xxGameAssistant/pao/MainActivity;->mIsAbortNewVewsion:Z

    .line 65
    iput-boolean v2, p0, Lcom/xxGameAssistant/pao/MainActivity;->mIsHasMT:Z

    .line 66
    iput-boolean v2, p0, Lcom/xxGameAssistant/pao/MainActivity;->mIsInstallOK:Z

    .line 67
    iput-object v1, p0, Lcom/xxGameAssistant/pao/MainActivity;->mAnnouncementText:Ljava/lang/String;

    .line 93
    new-instance v0, Lcom/xxGameAssistant/pao/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/xxGameAssistant/pao/MainActivity$1;-><init>(Lcom/xxGameAssistant/pao/MainActivity;)V

    iput-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity;->checkUpdate:Ljava/lang/Thread;

    .line 238
    new-instance v0, Lcom/xxGameAssistant/pao/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/xxGameAssistant/pao/MainActivity$2;-><init>(Lcom/xxGameAssistant/pao/MainActivity;)V

    iput-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity;->mHandler:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/xxGameAssistant/pao/MainActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/xxGameAssistant/pao/MainActivity;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/xxGameAssistant/pao/MainActivity;->mIsAbortNewVewsion:Z

    return v0
.end method

.method static synthetic access$10(Lcom/xxGameAssistant/pao/MainActivity;Z)V
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/xxGameAssistant/pao/MainActivity;->mIsInstallOK:Z

    return-void
.end method

.method static synthetic access$11(Lcom/xxGameAssistant/pao/MainActivity;)Lcom/xxGameAssistant/utility/PackageHelper;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity;->mPackageHelper:Lcom/xxGameAssistant/utility/PackageHelper;

    return-object v0
.end method

.method static synthetic access$12(Lcom/xxGameAssistant/pao/MainActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity;->mBonus:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$13(Lcom/xxGameAssistant/pao/MainActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity;->mRushDistance:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$14(Lcom/xxGameAssistant/pao/MainActivity;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$15(Lcom/xxGameAssistant/pao/MainActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity;->mPackageString:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$16(Lcom/xxGameAssistant/pao/MainActivity;Lcom/xxGameAssistant/utility/PackageHelper;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/xxGameAssistant/pao/MainActivity;->mPackageHelper:Lcom/xxGameAssistant/utility/PackageHelper;

    return-void
.end method

.method static synthetic access$17(Lcom/xxGameAssistant/pao/MainActivity;Z)V
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/xxGameAssistant/pao/MainActivity;->mIsAbortNewVewsion:Z

    return-void
.end method

.method static synthetic access$18(Lcom/xxGameAssistant/pao/MainActivity;)Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/xxGameAssistant/pao/MainActivity;->mIsHasNewVersion:Z

    return v0
.end method

.method static synthetic access$19(Lcom/xxGameAssistant/pao/MainActivity;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity;->checkUpdate:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$2(Lcom/xxGameAssistant/pao/MainActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity;->mCheckUpdate:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3(Lcom/xxGameAssistant/pao/MainActivity;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/xxGameAssistant/pao/MainActivity;->mIsHasMT:Z

    return v0
.end method

.method static synthetic access$4(Lcom/xxGameAssistant/pao/MainActivity;)Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/xxGameAssistant/pao/MainActivity;->mIsInstallOK:Z

    return v0
.end method

.method static synthetic access$5(Lcom/xxGameAssistant/pao/MainActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity;->mStartButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$6(Lcom/xxGameAssistant/pao/MainActivity;Z)V
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/xxGameAssistant/pao/MainActivity;->mIsHasNewVersion:Z

    return-void
.end method

.method static synthetic access$7(Lcom/xxGameAssistant/pao/MainActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/xxGameAssistant/pao/MainActivity;->mAnnouncementText:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/xxGameAssistant/pao/MainActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity;->mAnnounceTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/xxGameAssistant/pao/MainActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity;->mAnnouncementText:Ljava/lang/String;

    return-object v0
.end method

.method private doMain()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 311
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/xxGameAssistant/pao/MainActivity;->setContentView(I)V

    .line 313
    iput-boolean v3, p0, Lcom/xxGameAssistant/pao/MainActivity;->mIsInstallOK:Z

    .line 315
    const v1, 0x7f090004

    invoke-virtual {p0, v1}, Lcom/xxGameAssistant/pao/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/xxGameAssistant/pao/MainActivity;->mSelectedMT:Landroid/widget/TextView;

    .line 316
    const v1, 0x7f090003

    invoke-virtual {p0, v1}, Lcom/xxGameAssistant/pao/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/xxGameAssistant/pao/MainActivity;->mSpinner:Landroid/widget/Spinner;

    .line 317
    const v1, 0x7f09000a

    invoke-virtual {p0, v1}, Lcom/xxGameAssistant/pao/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/xxGameAssistant/pao/MainActivity;->mStartButton:Landroid/widget/Button;

    .line 318
    iget-object v1, p0, Lcom/xxGameAssistant/pao/MainActivity;->mStartButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 319
    const v1, 0x7f09000b

    invoke-virtual {p0, v1}, Lcom/xxGameAssistant/pao/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/xxGameAssistant/pao/MainActivity;->mCheckUpdate:Landroid/widget/Button;

    .line 320
    const v1, 0x7f09000d

    invoke-virtual {p0, v1}, Lcom/xxGameAssistant/pao/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/xxGameAssistant/pao/MainActivity;->mAnnounceTextView:Landroid/widget/TextView;

    .line 321
    iget-object v1, p0, Lcom/xxGameAssistant/pao/MainActivity;->mAnnounceTextView:Landroid/widget/TextView;

    const-string v2, "\u5404\u4f4d\u53c9\u70e7\uff0c\n\t\t\u611f\u8c22\u4f7f\u7528\u53c9\u53c9\u6e38\u620f\u52a9\u624b\uff0c\u5929\u5929\u9177\u8dd1\u63d2\u4ef6\u6838\u5fc3\u529f\u80fd\uff1a\n\t\t\t1.\u65e0\u9650\u51b2\u523a:\u81ea\u5b9a\u4e494\u767e\u81f3100\u4e07\u7c73\u98de\u884c\u8ddd\u79bb\uff0c\u514d\u9053\u5177\uff0c\u505a\u5230\u771f\u6b63\u7684\u4e00\u98de\u51b2\u5929\uff01\n\t\t\t2.bonus\u5956\u52b1\u52a0\u500d:\u7528\u6237\u81ea\u7531\u9009\u62e9\u5f97\u5206\u52a0\u6210\u500d\u6570\uff0c\u5f97\u5206\u591a\u591a\uff01\n\t\t\u8bf4\u660e\uff1a\u672c\u63d2\u4ef6\u76ee\u524d\u53ea\u652f\u6301\u5fae\u4fe1\u6e20\u9053\u76841.0.6.0\u7248\u5929\u5929\u9177\u8dd1\u3002\n\t\t\u5e0c\u671b\u53c9\u70e7\u4eec\u6301\u7eed\u5173\u6ce8\u53c9\u53c9\uff0c\u5efa\u8bae\u3001bug\u968f\u65f6\u53cd\u9988\uff0c\u53c9\u53c9\u7684\u6210\u957f\u9700\u8981\u5404\u4f4d\u53c9\u70e7\u7684\u5e2e\u52a9\uff0c\u505a\u6700\u597d\u7684\u6e38\u620f\u63d2\u4ef6\u3002\n\t\t\u65b0\u6d6a\u5fae\u535a\uff1a@\u53c9\u53c9\u6e38\u620f\u52a9\u624b\n\t\tBUG\u53cd\u9988QQ\uff1a1068071192\n\t\t\u5b98\u65b9\u7f51\u7ad9\uff1awww.xxzhushou.com \n\t\t\u4f7f\u7528\u63d2\u4ef6\u4e00\u5b9a\u8981\u6388\u4e88root\u6743\u9650\n"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    const v1, 0x7f090008

    invoke-virtual {p0, v1}, Lcom/xxGameAssistant/pao/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/xxGameAssistant/pao/MainActivity;->mBonus:Landroid/widget/EditText;

    .line 323
    const v1, 0x7f090006

    invoke-virtual {p0, v1}, Lcom/xxGameAssistant/pao/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/xxGameAssistant/pao/MainActivity;->mRushDistance:Landroid/widget/EditText;

    .line 325
    iget-object v1, p0, Lcom/xxGameAssistant/pao/MainActivity;->mStartButton:Landroid/widget/Button;

    new-instance v2, Lcom/xxGameAssistant/pao/MainActivity$3;

    invoke-direct {v2, p0}, Lcom/xxGameAssistant/pao/MainActivity$3;-><init>(Lcom/xxGameAssistant/pao/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    iget-object v1, p0, Lcom/xxGameAssistant/pao/MainActivity;->mCheckUpdate:Landroid/widget/Button;

    new-instance v2, Lcom/xxGameAssistant/pao/MainActivity$4;

    invoke-direct {v2, p0}, Lcom/xxGameAssistant/pao/MainActivity$4;-><init>(Lcom/xxGameAssistant/pao/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    sget-object v1, Lcom/xxGameAssistant/pao/MTApplication;->mPackageString:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/xxGameAssistant/pao/MainActivity;->mPackageString:Ljava/util/ArrayList;

    .line 370
    sget-object v1, Lcom/xxGameAssistant/pao/MTApplication;->mChannelString:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/xxGameAssistant/pao/MainActivity;->mChannelString:Ljava/util/ArrayList;

    .line 372
    sget-boolean v1, Lcom/xxGameAssistant/pao/MTApplication;->mIsNewestVersion:Z

    if-nez v1, :cond_0

    .line 373
    iget-object v1, p0, Lcom/xxGameAssistant/pao/MainActivity;->mSelectedMT:Landroid/widget/TextView;

    const-string v2, "\u63d2\u4ef6\u53ea\u652f\u63011.0.7.0\u7248\u9177\u8dd1"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v1, p0, Lcom/xxGameAssistant/pao/MainActivity;->mStartButton:Landroid/widget/Button;

    const-string v2, "\u8bf7\u66f4\u65b0\u5929\u5929\u9177\u8dd1"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v1, p0, Lcom/xxGameAssistant/pao/MainActivity;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 376
    iget-object v1, p0, Lcom/xxGameAssistant/pao/MainActivity;->mStartButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 401
    :goto_0
    return-void

    .line 380
    :cond_0
    iget-object v1, p0, Lcom/xxGameAssistant/pao/MainActivity;->mPackageString:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 381
    iget-object v1, p0, Lcom/xxGameAssistant/pao/MainActivity;->mPackageString:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 382
    iget-object v1, p0, Lcom/xxGameAssistant/pao/MainActivity;->mSelectedMT:Landroid/widget/TextView;

    const-string v2, "\u672a\u5b89\u88c5\u5929\u5929\u9177\u8dd1"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v1, p0, Lcom/xxGameAssistant/pao/MainActivity;->mStartButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 384
    iput-boolean v3, p0, Lcom/xxGameAssistant/pao/MainActivity;->mIsHasMT:Z

    .line 385
    iget-object v1, p0, Lcom/xxGameAssistant/pao/MainActivity;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_0

    .line 387
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xxGameAssistant/pao/MainActivity;->mIsHasMT:Z

    .line 388
    iget-object v1, p0, Lcom/xxGameAssistant/pao/MainActivity;->mSelectedMT:Landroid/widget/TextView;

    const-string v2, "\u5f53\u524d\u9009\u62e9\u7684\u6e38\u620f:"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 390
    const/high16 v1, 0x7f030000

    iget-object v2, p0, Lcom/xxGameAssistant/pao/MainActivity;->mChannelString:Ljava/util/ArrayList;

    .line 389
    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 391
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 392
    iget-object v1, p0, Lcom/xxGameAssistant/pao/MainActivity;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_0

    .line 395
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_2
    iget-object v1, p0, Lcom/xxGameAssistant/pao/MainActivity;->mSelectedMT:Landroid/widget/TextView;

    const-string v2, "\u7a0b\u5e8f\u53d1\u751f\u5f02\u5e38\uff0c\u8bf7\u91cd\u542f"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    iget-object v1, p0, Lcom/xxGameAssistant/pao/MainActivity;->mStartButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 397
    iput-boolean v3, p0, Lcom/xxGameAssistant/pao/MainActivity;->mIsHasMT:Z

    .line 398
    iget-object v1, p0, Lcom/xxGameAssistant/pao/MainActivity;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-direct {p0}, Lcom/xxGameAssistant/pao/MainActivity;->doMain()V

    .line 83
    iput-object p0, p0, Lcom/xxGameAssistant/pao/MainActivity;->mContext:Landroid/content/Context;

    .line 85
    invoke-virtual {p0}, Lcom/xxGameAssistant/pao/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/xxGameAssistant/pao/MTApplication;

    iget-object v1, p0, Lcom/xxGameAssistant/pao/MainActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/xxGameAssistant/pao/MTApplication;->setHandler(Landroid/os/Handler;)V

    .line 87
    new-instance v0, Lcom/xxGameAssistant/utility/PackageHelper;

    invoke-direct {v0, p0}, Lcom/xxGameAssistant/utility/PackageHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity;->mPackageHelper:Lcom/xxGameAssistant/utility/PackageHelper;

    .line 88
    invoke-static {p0}, Lcom/tendcloud/tenddata/TCAgent;->init(Landroid/content/Context;)V

    .line 89
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tendcloud/tenddata/TCAgent;->setReportUncaughtExceptions(Z)V

    .line 91
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 303
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/xxGameAssistant/pao/MainActivity;->finish()V

    .line 306
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 443
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 444
    invoke-static {p0}, Lcom/tendcloud/tenddata/TCAgent;->onPause(Landroid/app/Activity;)V

    .line 445
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 437
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 438
    invoke-static {p0}, Lcom/tendcloud/tenddata/TCAgent;->onResume(Landroid/app/Activity;)V

    .line 439
    return-void
.end method
