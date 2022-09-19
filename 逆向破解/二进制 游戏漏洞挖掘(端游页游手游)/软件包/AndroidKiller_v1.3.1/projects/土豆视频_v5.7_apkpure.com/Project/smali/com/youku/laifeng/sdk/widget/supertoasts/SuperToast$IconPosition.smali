.class public final enum Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;
.super Ljava/lang/Enum;
.source "SuperToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IconPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

.field public static final enum BOTTOM:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

.field public static final enum LEFT:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

.field public static final enum RIGHT:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

.field public static final enum TOP:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 199
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;->LEFT:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    .line 204
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v3}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;->RIGHT:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    .line 209
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v4}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;->TOP:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    .line 214
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v5}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;->BOTTOM:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    .line 194
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;->LEFT:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;->RIGHT:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;->TOP:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;->BOTTOM:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    aput-object v1, v0, v5

    sput-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;->$VALUES:[Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

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
    .line 194
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 194
    const-class v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    return-object v0
.end method

.method public static values()[Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;->$VALUES:[Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    invoke-virtual {v0}, [Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    return-object v0
.end method
