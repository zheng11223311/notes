.class public final enum Lcom/tudou/ui/activity/DetailActivity$NextVideoType;
.super Ljava/lang/Enum;
.source "DetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/activity/DetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NextVideoType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tudou/ui/activity/DetailActivity$NextVideoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

.field public static final enum FEATURE:Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

.field public static final enum RECOMMEND:Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

.field public static final enum VIDEO:Lcom/tudou/ui/activity/DetailActivity$NextVideoType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2700
    new-instance v0, Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v2}, Lcom/tudou/ui/activity/DetailActivity$NextVideoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tudou/ui/activity/DetailActivity$NextVideoType;->VIDEO:Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    new-instance v0, Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    const-string v1, "FEATURE"

    invoke-direct {v0, v1, v3}, Lcom/tudou/ui/activity/DetailActivity$NextVideoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tudou/ui/activity/DetailActivity$NextVideoType;->FEATURE:Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    new-instance v0, Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    const-string v1, "RECOMMEND"

    invoke-direct {v0, v1, v4}, Lcom/tudou/ui/activity/DetailActivity$NextVideoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tudou/ui/activity/DetailActivity$NextVideoType;->RECOMMEND:Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    .line 2699
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    sget-object v1, Lcom/tudou/ui/activity/DetailActivity$NextVideoType;->VIDEO:Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tudou/ui/activity/DetailActivity$NextVideoType;->FEATURE:Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tudou/ui/activity/DetailActivity$NextVideoType;->RECOMMEND:Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tudou/ui/activity/DetailActivity$NextVideoType;->$VALUES:[Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 2699
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tudou/ui/activity/DetailActivity$NextVideoType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2699
    const-class v0, Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    return-object v0
.end method

.method public static values()[Lcom/tudou/ui/activity/DetailActivity$NextVideoType;
    .locals 1

    .prologue
    .line 2699
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity$NextVideoType;->$VALUES:[Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    invoke-virtual {v0}, [Lcom/tudou/ui/activity/DetailActivity$NextVideoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    return-object v0
.end method
