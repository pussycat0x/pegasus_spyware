.class public Lcom/xxGameAssistant/pao/SplashActivity;
.super Landroid/app/Activity;
.source "SplashActivity.java"


# instance fields
.field private final SPLASH_DISPLAY_LENGHT:I

.field public go:Z

.field public mChannelString:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPackageString:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/xxGameAssistant/pao/SplashActivity;->SPLASH_DISPLAY_LENGHT:I

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xxGameAssistant/pao/SplashActivity;->mPackageString:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xxGameAssistant/pao/SplashActivity;->mChannelString:Ljava/util/ArrayList;

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xxGameAssistant/pao/SplashActivity;->go:Z

    .line 19
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v10, 0x7f030002

    invoke-virtual {p0, v10}, Lcom/xxGameAssistant/pao/SplashActivity;->setContentView(I)V

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 34
    .local v6, "start":J
    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    new-instance v11, Lcom/xxGameAssistant/pao/SplashActivity$1;

    invoke-direct {v11, p0}, Lcom/xxGameAssistant/pao/SplashActivity$1;-><init>(Lcom/xxGameAssistant/pao/SplashActivity;)V

    .line 48
    const-wide/16 v12, 0xbb8

    .line 34
    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51
    invoke-virtual {p0}, Lcom/xxGameAssistant/pao/SplashActivity;->getApplication()Landroid/app/Application;

    move-result-object v10

    check-cast v10, Lcom/xxGameAssistant/pao/MTApplication;

    invoke-virtual {v10}, Lcom/xxGameAssistant/pao/MTApplication;->getThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 54
    invoke-virtual {p0}, Lcom/xxGameAssistant/pao/SplashActivity;->scanAllApp()V

    .line 59
    :try_start_0
    invoke-virtual {p0}, Lcom/xxGameAssistant/pao/SplashActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 62
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/xxGameAssistant/pao/SplashActivity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 61
    invoke-virtual {v5, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 63
    .local v4, "packInfo":Landroid/content/pm/PackageInfo;
    iget-object v9, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 65
    .local v9, "vm":Ljava/lang/String;
    const v10, 0x7f09000e

    invoke-virtual {p0, v10}, Lcom/xxGameAssistant/pao/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 66
    .local v8, "tv":Landroid/widget/TextView;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "\u7248\u672c\uff1a"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const-string v10, "com.tencent.pao"

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    iget-object v3, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 68
    .local v3, "lianmeng":Ljava/lang/String;
    const-string v10, "\u7248\u672c"

    invoke-static {v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const-string v10, "1.0.7.0"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 70
    const/4 v10, 0x1

    sput-boolean v10, Lcom/xxGameAssistant/pao/MTApplication;->mIsNewestVersion:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v3    # "lianmeng":Ljava/lang/String;
    .end local v4    # "packInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v8    # "tv":Landroid/widget/TextView;
    .end local v9    # "vm":Ljava/lang/String;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 81
    .local v1, "end2":J
    const-string v10, "time2"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sub-long v12, v1, v6

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void

    .line 72
    .end local v1    # "end2":J
    .restart local v3    # "lianmeng":Ljava/lang/String;
    .restart local v4    # "packInfo":Landroid/content/pm/PackageInfo;
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v8    # "tv":Landroid/widget/TextView;
    .restart local v9    # "vm":Ljava/lang/String;
    :cond_0
    const/4 v10, 0x0

    :try_start_1
    sput-boolean v10, Lcom/xxGameAssistant/pao/MTApplication;->mIsNewestVersion:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 74
    .end local v3    # "lianmeng":Ljava/lang/String;
    .end local v4    # "packInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v8    # "tv":Landroid/widget/TextView;
    .end local v9    # "vm":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/xxGameAssistant/pao/SplashActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 120
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/xxGameAssistant/pao/SplashActivity;->finish()V

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xxGameAssistant/pao/SplashActivity;->go:Z

    .line 125
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public scanAllApp()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 97
    invoke-virtual {p0}, Lcom/xxGameAssistant/pao/SplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f040001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "tChannel":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/xxGameAssistant/pao/SplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f040000

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, "tPackage_key":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/xxGameAssistant/pao/SplashActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 102
    .local v2, "tPManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v8}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    .line 104
    .local v5, "tpInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 105
    .local v1, "tItor":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageInfo;>;"
    const/4 v4, 0x0

    .line 106
    .local v4, "tp":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 116
    return-void

    .line 107
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "tp":Landroid/content/pm/PackageInfo;
    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 109
    .restart local v4    # "tp":Landroid/content/pm/PackageInfo;
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aget-object v7, v3, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    .line 110
    iget-object v6, p0, Lcom/xxGameAssistant/pao/SplashActivity;->mPackageString:Ljava/util/ArrayList;

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v6, p0, Lcom/xxGameAssistant/pao/SplashActivity;->mChannelString:Ljava/util/ArrayList;

    aget-object v7, v0, v8

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
