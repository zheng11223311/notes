.class public final enum Lcom/intertrust/wasabi/media/PlaylistProxy$Flags;
.super Ljava/lang/Enum;
.source "PlaylistProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intertrust/wasabi/media/PlaylistProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Flags"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/intertrust/wasabi/media/PlaylistProxy$Flags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/intertrust/wasabi/media/PlaylistProxy$Flags;

.field public static final enum AUTH_TOKEN_HEADER:Lcom/intertrust/wasabi/media/PlaylistProxy$Flags;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/intertrust/wasabi/media/PlaylistProxy$Flags;

    const-string v1, "AUTH_TOKEN_HEADER"

    invoke-direct {v0, v1, v2}, Lcom/intertrust/wasabi/media/PlaylistProxy$Flags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intertrust/wasabi/media/PlaylistProxy$Flags;->AUTH_TOKEN_HEADER:Lcom/intertrust/wasabi/media/PlaylistProxy$Flags;

    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/intertrust/wasabi/media/PlaylistProxy$Flags;

    sget-object v1, Lcom/intertrust/wasabi/media/PlaylistProxy$Flags;->AUTH_TOKEN_HEADER:Lcom/intertrust/wasabi/media/PlaylistProxy$Flags;

    aput-object v1, v0, v2

    sput-object v0, Lcom/intertrust/wasabi/media/PlaylistProxy$Flags;->$VALUES:[Lcom/intertrust/wasabi/media/PlaylistProxy$Flags;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/intertrust/wasabi/media/PlaylistProxy$Flags;
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/intertrust/wasabi/media/PlaylistProxy$Flags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/intertrust/wasabi/media/PlaylistProxy$Flags;

    return-object v0
.end method

.method public static values()[Lcom/intertrust/wasabi/media/PlaylistProxy$Flags;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/intertrust/wasabi/media/PlaylistProxy$Flags;->$VALUES:[Lcom/intertrust/wasabi/media/PlaylistProxy$Flags;

    invoke-virtual {v0}, [Lcom/intertrust/wasabi/media/PlaylistProxy$Flags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/intertrust/wasabi/media/PlaylistProxy$Flags;

    return-object v0
.end method
