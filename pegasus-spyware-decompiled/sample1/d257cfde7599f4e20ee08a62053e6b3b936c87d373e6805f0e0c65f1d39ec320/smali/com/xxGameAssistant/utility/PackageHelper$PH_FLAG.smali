.class public final enum Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;
.super Ljava/lang/Enum;
.source "PackageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xxGameAssistant/utility/PackageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PH_FLAG"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;

.field public static final enum act_is_null:Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;

.field public static final enum app_not_exist:Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;

.field public static final enum app_open_succeed:Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;

.field public static final enum just_invalid:Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;

    const-string v1, "just_invalid"

    invoke-direct {v0, v1, v2}, Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;->just_invalid:Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;

    .line 28
    new-instance v0, Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;

    const-string v1, "act_is_null"

    invoke-direct {v0, v1, v3}, Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;->act_is_null:Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;

    .line 29
    new-instance v0, Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;

    const-string v1, "app_open_succeed"

    invoke-direct {v0, v1, v4}, Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;->app_open_succeed:Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;

    .line 30
    new-instance v0, Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;

    const-string v1, "app_not_exist"

    invoke-direct {v0, v1, v5}, Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;->app_not_exist:Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;

    sget-object v1, Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;->just_invalid:Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;->act_is_null:Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;->app_open_succeed:Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;->app_not_exist:Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;

    aput-object v1, v0, v5

    sput-object v0, Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;->ENUM$VALUES:[Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;

    return-object v0
.end method

.method public static values()[Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;->ENUM$VALUES:[Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;

    array-length v1, v0

    new-array v2, v1, [Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
