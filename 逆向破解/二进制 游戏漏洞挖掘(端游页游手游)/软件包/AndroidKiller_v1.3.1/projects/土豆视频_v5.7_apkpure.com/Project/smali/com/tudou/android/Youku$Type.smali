.class public final enum Lcom/tudou/android/Youku$Type;
.super Ljava/lang/Enum;
.source "Youku.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/android/Youku;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tudou/android/Youku$Type;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tudou/android/Youku$Type;

.field public static final enum GAME:Lcom/tudou/android/Youku$Type;

.field public static final enum SHOWID:Lcom/tudou/android/Youku$Type;

.field public static final enum VIDEOID:Lcom/tudou/android/Youku$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 198
    new-instance v0, Lcom/tudou/android/Youku$Type;

    const-string v1, "SHOWID"

    invoke-direct {v0, v1, v2}, Lcom/tudou/android/Youku$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    new-instance v0, Lcom/tudou/android/Youku$Type;

    const-string v1, "VIDEOID"

    invoke-direct {v0, v1, v3}, Lcom/tudou/android/Youku$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    new-instance v0, Lcom/tudou/android/Youku$Type;

    const-string v1, "GAME"

    invoke-direct {v0, v1, v4}, Lcom/tudou/android/Youku$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tudou/android/Youku$Type;->GAME:Lcom/tudou/android/Youku$Type;

    .line 197
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tudou/android/Youku$Type;

    sget-object v1, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tudou/android/Youku$Type;->GAME:Lcom/tudou/android/Youku$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tudou/android/Youku$Type;->$VALUES:[Lcom/tudou/android/Youku$Type;

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
    .line 197
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tudou/android/Youku$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 197
    const-class v0, Lcom/tudou/android/Youku$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tudou/android/Youku$Type;

    return-object v0
.end method

.method public static values()[Lcom/tudou/android/Youku$Type;
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/tudou/android/Youku$Type;->$VALUES:[Lcom/tudou/android/Youku$Type;

    invoke-virtual {v0}, [Lcom/tudou/android/Youku$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tudou/android/Youku$Type;

    return-object v0
.end method
