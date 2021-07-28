.class public Lcom/xxGameAssistant/utility/PackageHelper;
.super Ljava/lang/Object;
.source "PackageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;
    }
.end annotation


# instance fields
.field mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/xxGameAssistant/utility/PackageHelper;->mActivity:Landroid/app/Activity;

    .line 38
    return-void
.end method


# virtual methods
.method public isAppRunning(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 92
    iget-object v4, p0, Lcom/xxGameAssistant/utility/PackageHelper;->mActivity:Landroid/app/Activity;

    if-nez v4, :cond_0

    .line 94
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Activity not set, do init first"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 97
    :cond_0
    iget-object v4, p0, Lcom/xxGameAssistant/utility/PackageHelper;->mActivity:Landroid/app/Activity;

    const-string v6, "activity"

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 98
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 100
    .local v3, "procList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 109
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_0
    return-object v4

    .line 100
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 102
    .local v1, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v7, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v8, v7

    move v4, v5

    :goto_1
    if-ge v4, v8, :cond_1

    aget-object v2, v7, v4

    .line 104
    .local v2, "pkgName":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 105
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 102
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public openApp(Ljava/lang/String;)Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;
    .locals 14
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x0

    .line 46
    sget-object v4, Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;->just_invalid:Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;

    .line 48
    .local v4, "flag":Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;
    iget-object v11, p0, Lcom/xxGameAssistant/utility/PackageHelper;->mActivity:Landroid/app/Activity;

    if-nez v11, :cond_0

    .line 49
    sget-object v4, Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;->act_is_null:Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;

    .line 87
    :goto_0
    return-object v4

    .line 53
    :cond_0
    iget-object v11, p0, Lcom/xxGameAssistant/utility/PackageHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 54
    .local v8, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    .line 56
    .local v7, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {v8, p1, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 63
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 64
    .local v10, "resolveIntent":Landroid/content/Intent;
    const-string v11, "android.intent.category.LAUNCHER"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    iget-object v11, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-virtual {v8, v10, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 69
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 70
    .local v9, "reolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v9, :cond_1

    .line 71
    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 72
    .local v6, "newPackageName":Ljava/lang/String;
    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 73
    .local v1, "className":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v5, "intent":Landroid/content/Intent;
    const-string v11, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v6, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .local v2, "cn":Landroid/content/ComponentName;
    invoke-virtual {v5, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 78
    const/high16 v11, 0x10000000

    invoke-virtual {v5, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 79
    iget-object v11, p0, Lcom/xxGameAssistant/utility/PackageHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 80
    sget-object v4, Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;->app_open_succeed:Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;

    .line 81
    goto :goto_0

    .line 57
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "cn":Landroid/content/ComponentName;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "newPackageName":Ljava/lang/String;
    .end local v9    # "reolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v10    # "resolveIntent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 58
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v4, Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;->app_not_exist:Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;

    .line 59
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 83
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v9    # "reolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v10    # "resolveIntent":Landroid/content/Intent;
    :cond_1
    sget-object v4, Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;->app_not_exist:Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;

    goto :goto_0
.end method
