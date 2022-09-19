.class final enum Lcom/youdo/renderers/video/VideoAdView$MuteState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youdo/renderers/video/VideoAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MuteState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youdo/renderers/video/VideoAdView$MuteState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youdo/renderers/video/VideoAdView$MuteState;

.field public static final enum MUTED:Lcom/youdo/renderers/video/VideoAdView$MuteState;

.field public static final enum UNINITIALIZED:Lcom/youdo/renderers/video/VideoAdView$MuteState;

.field public static final enum UNMUTED:Lcom/youdo/renderers/video/VideoAdView$MuteState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/youdo/renderers/video/VideoAdView$MuteState;

    const-string v1, "UNINITIALIZED"

    invoke-direct {v0, v1, v2}, Lcom/youdo/renderers/video/VideoAdView$MuteState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youdo/renderers/video/VideoAdView$MuteState;->UNINITIALIZED:Lcom/youdo/renderers/video/VideoAdView$MuteState;

    new-instance v0, Lcom/youdo/renderers/video/VideoAdView$MuteState;

    const-string v1, "MUTED"

    invoke-direct {v0, v1, v3}, Lcom/youdo/renderers/video/VideoAdView$MuteState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youdo/renderers/video/VideoAdView$MuteState;->MUTED:Lcom/youdo/renderers/video/VideoAdView$MuteState;

    new-instance v0, Lcom/youdo/renderers/video/VideoAdView$MuteState;

    const-string v1, "UNMUTED"

    invoke-direct {v0, v1, v4}, Lcom/youdo/renderers/video/VideoAdView$MuteState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youdo/renderers/video/VideoAdView$MuteState;->UNMUTED:Lcom/youdo/renderers/video/VideoAdView$MuteState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/youdo/renderers/video/VideoAdView$MuteState;

    sget-object v1, Lcom/youdo/renderers/video/VideoAdView$MuteState;->UNINITIALIZED:Lcom/youdo/renderers/video/VideoAdView$MuteState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/youdo/renderers/video/VideoAdView$MuteState;->MUTED:Lcom/youdo/renderers/video/VideoAdView$MuteState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youdo/renderers/video/VideoAdView$MuteState;->UNMUTED:Lcom/youdo/renderers/video/VideoAdView$MuteState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/youdo/renderers/video/VideoAdView$MuteState;->$VALUES:[Lcom/youdo/renderers/video/VideoAdView$MuteState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youdo/renderers/video/VideoAdView$MuteState;
    .locals 1

    const-class v0, Lcom/youdo/renderers/video/VideoAdView$MuteState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youdo/renderers/video/VideoAdView$MuteState;

    return-object v0
.end method

.method public static values()[Lcom/youdo/renderers/video/VideoAdView$MuteState;
    .locals 1

    sget-object v0, Lcom/youdo/renderers/video/VideoAdView$MuteState;->$VALUES:[Lcom/youdo/renderers/video/VideoAdView$MuteState;

    invoke-virtual {v0}, [Lcom/youdo/renderers/video/VideoAdView$MuteState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youdo/renderers/video/VideoAdView$MuteState;

    return-object v0
.end method
