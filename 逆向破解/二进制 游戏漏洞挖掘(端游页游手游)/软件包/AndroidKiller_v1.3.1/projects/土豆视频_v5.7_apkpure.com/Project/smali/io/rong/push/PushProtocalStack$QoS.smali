.class public final enum Lio/rong/push/PushProtocalStack$QoS;
.super Ljava/lang/Enum;
.source "PushProtocalStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/push/PushProtocalStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QoS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/rong/push/PushProtocalStack$QoS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/rong/push/PushProtocalStack$QoS;

.field public static final enum AT_LEAST_ONCE:Lio/rong/push/PushProtocalStack$QoS;

.field public static final enum AT_MOST_ONCE:Lio/rong/push/PushProtocalStack$QoS;

.field public static final enum DEFAULT:Lio/rong/push/PushProtocalStack$QoS;

.field public static final enum EXACTLY_ONCE:Lio/rong/push/PushProtocalStack$QoS;


# instance fields
.field public final val:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 823
    new-instance v0, Lio/rong/push/PushProtocalStack$QoS;

    const-string v1, "AT_MOST_ONCE"

    invoke-direct {v0, v1, v2, v2}, Lio/rong/push/PushProtocalStack$QoS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/rong/push/PushProtocalStack$QoS;->AT_MOST_ONCE:Lio/rong/push/PushProtocalStack$QoS;

    new-instance v0, Lio/rong/push/PushProtocalStack$QoS;

    const-string v1, "AT_LEAST_ONCE"

    invoke-direct {v0, v1, v3, v3}, Lio/rong/push/PushProtocalStack$QoS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/rong/push/PushProtocalStack$QoS;->AT_LEAST_ONCE:Lio/rong/push/PushProtocalStack$QoS;

    new-instance v0, Lio/rong/push/PushProtocalStack$QoS;

    const-string v1, "EXACTLY_ONCE"

    invoke-direct {v0, v1, v4, v4}, Lio/rong/push/PushProtocalStack$QoS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/rong/push/PushProtocalStack$QoS;->EXACTLY_ONCE:Lio/rong/push/PushProtocalStack$QoS;

    new-instance v0, Lio/rong/push/PushProtocalStack$QoS;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v5, v5}, Lio/rong/push/PushProtocalStack$QoS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/rong/push/PushProtocalStack$QoS;->DEFAULT:Lio/rong/push/PushProtocalStack$QoS;

    .line 822
    const/4 v0, 0x4

    new-array v0, v0, [Lio/rong/push/PushProtocalStack$QoS;

    sget-object v1, Lio/rong/push/PushProtocalStack$QoS;->AT_MOST_ONCE:Lio/rong/push/PushProtocalStack$QoS;

    aput-object v1, v0, v2

    sget-object v1, Lio/rong/push/PushProtocalStack$QoS;->AT_LEAST_ONCE:Lio/rong/push/PushProtocalStack$QoS;

    aput-object v1, v0, v3

    sget-object v1, Lio/rong/push/PushProtocalStack$QoS;->EXACTLY_ONCE:Lio/rong/push/PushProtocalStack$QoS;

    aput-object v1, v0, v4

    sget-object v1, Lio/rong/push/PushProtocalStack$QoS;->DEFAULT:Lio/rong/push/PushProtocalStack$QoS;

    aput-object v1, v0, v5

    sput-object v0, Lio/rong/push/PushProtocalStack$QoS;->$VALUES:[Lio/rong/push/PushProtocalStack$QoS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "val"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 827
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 828
    iput p3, p0, Lio/rong/push/PushProtocalStack$QoS;->val:I

    .line 829
    return-void
.end method

.method static valueOf(I)Lio/rong/push/PushProtocalStack$QoS;
    .locals 7
    .param p0, "i"    # I

    .prologue
    .line 832
    invoke-static {}, Lio/rong/push/PushProtocalStack$QoS;->values()[Lio/rong/push/PushProtocalStack$QoS;

    move-result-object v0

    .local v0, "arr$":[Lio/rong/push/PushProtocalStack$QoS;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 833
    .local v3, "q":Lio/rong/push/PushProtocalStack$QoS;
    iget v4, v3, Lio/rong/push/PushProtocalStack$QoS;->val:I

    if-ne v4, p0, :cond_0

    .line 834
    return-object v3

    .line 832
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 836
    .end local v3    # "q":Lio/rong/push/PushProtocalStack$QoS;
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not a valid QoS number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static valueOf(Ljava/lang/String;)Lio/rong/push/PushProtocalStack$QoS;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 822
    const-class v0, Lio/rong/push/PushProtocalStack$QoS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/rong/push/PushProtocalStack$QoS;

    return-object v0
.end method

.method public static values()[Lio/rong/push/PushProtocalStack$QoS;
    .locals 1

    .prologue
    .line 822
    sget-object v0, Lio/rong/push/PushProtocalStack$QoS;->$VALUES:[Lio/rong/push/PushProtocalStack$QoS;

    invoke-virtual {v0}, [Lio/rong/push/PushProtocalStack$QoS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/rong/push/PushProtocalStack$QoS;

    return-object v0
.end method
