.class public final enum Lcom/tudou/detail/vo/EasterEggs$EggsType;
.super Ljava/lang/Enum;
.source "EasterEggs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/vo/EasterEggs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EggsType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tudou/detail/vo/EasterEggs$EggsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tudou/detail/vo/EasterEggs$EggsType;

.field public static final enum HTML5:Lcom/tudou/detail/vo/EasterEggs$EggsType;

.field public static final enum TEXT:Lcom/tudou/detail/vo/EasterEggs$EggsType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/tudou/detail/vo/EasterEggs$EggsType;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/tudou/detail/vo/EasterEggs$EggsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tudou/detail/vo/EasterEggs$EggsType;->TEXT:Lcom/tudou/detail/vo/EasterEggs$EggsType;

    new-instance v0, Lcom/tudou/detail/vo/EasterEggs$EggsType;

    const-string v1, "HTML5"

    invoke-direct {v0, v1, v3}, Lcom/tudou/detail/vo/EasterEggs$EggsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tudou/detail/vo/EasterEggs$EggsType;->HTML5:Lcom/tudou/detail/vo/EasterEggs$EggsType;

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/tudou/detail/vo/EasterEggs$EggsType;

    sget-object v1, Lcom/tudou/detail/vo/EasterEggs$EggsType;->TEXT:Lcom/tudou/detail/vo/EasterEggs$EggsType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tudou/detail/vo/EasterEggs$EggsType;->HTML5:Lcom/tudou/detail/vo/EasterEggs$EggsType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/tudou/detail/vo/EasterEggs$EggsType;->$VALUES:[Lcom/tudou/detail/vo/EasterEggs$EggsType;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tudou/detail/vo/EasterEggs$EggsType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/tudou/detail/vo/EasterEggs$EggsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/vo/EasterEggs$EggsType;

    return-object v0
.end method

.method public static values()[Lcom/tudou/detail/vo/EasterEggs$EggsType;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/tudou/detail/vo/EasterEggs$EggsType;->$VALUES:[Lcom/tudou/detail/vo/EasterEggs$EggsType;

    invoke-virtual {v0}, [Lcom/tudou/detail/vo/EasterEggs$EggsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tudou/detail/vo/EasterEggs$EggsType;

    return-object v0
.end method
