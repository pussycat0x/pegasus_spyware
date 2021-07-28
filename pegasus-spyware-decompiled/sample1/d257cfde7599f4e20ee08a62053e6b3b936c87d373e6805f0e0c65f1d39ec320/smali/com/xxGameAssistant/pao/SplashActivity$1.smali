.class Lcom/xxGameAssistant/pao/SplashActivity$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xxGameAssistant/pao/SplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xxGameAssistant/pao/SplashActivity;


# direct methods
.method constructor <init>(Lcom/xxGameAssistant/pao/SplashActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/xxGameAssistant/pao/SplashActivity$1;->this$0:Lcom/xxGameAssistant/pao/SplashActivity;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 37
    iget-object v1, p0, Lcom/xxGameAssistant/pao/SplashActivity$1;->this$0:Lcom/xxGameAssistant/pao/SplashActivity;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/xxGameAssistant/pao/SplashActivity;->go:Z

    .line 39
    iget-object v1, p0, Lcom/xxGameAssistant/pao/SplashActivity$1;->this$0:Lcom/xxGameAssistant/pao/SplashActivity;

    iget-object v1, v1, Lcom/xxGameAssistant/pao/SplashActivity;->mPackageString:Ljava/util/ArrayList;

    sput-object v1, Lcom/xxGameAssistant/pao/MTApplication;->mPackageString:Ljava/util/ArrayList;

    .line 40
    iget-object v1, p0, Lcom/xxGameAssistant/pao/SplashActivity$1;->this$0:Lcom/xxGameAssistant/pao/SplashActivity;

    iget-object v1, v1, Lcom/xxGameAssistant/pao/SplashActivity;->mChannelString:Ljava/util/ArrayList;

    sput-object v1, Lcom/xxGameAssistant/pao/MTApplication;->mChannelString:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xxGameAssistant/pao/SplashActivity$1;->this$0:Lcom/xxGameAssistant/pao/SplashActivity;

    .line 43
    const-class v2, Lcom/xxGameAssistant/pao/MainActivity;

    .line 42
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/xxGameAssistant/pao/SplashActivity$1;->this$0:Lcom/xxGameAssistant/pao/SplashActivity;

    invoke-virtual {v1, v0}, Lcom/xxGameAssistant/pao/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 45
    iget-object v1, p0, Lcom/xxGameAssistant/pao/SplashActivity$1;->this$0:Lcom/xxGameAssistant/pao/SplashActivity;

    invoke-virtual {v1}, Lcom/xxGameAssistant/pao/SplashActivity;->finish()V

    .line 46
    return-void
.end method
