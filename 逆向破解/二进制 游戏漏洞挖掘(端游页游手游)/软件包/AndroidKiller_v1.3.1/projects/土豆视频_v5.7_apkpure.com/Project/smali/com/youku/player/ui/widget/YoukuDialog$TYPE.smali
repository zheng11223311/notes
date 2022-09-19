.class public final enum Lcom/youku/player/ui/widget/YoukuDialog$TYPE;
.super Ljava/lang/Enum;
.source "YoukuDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/ui/widget/YoukuDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/player/ui/widget/YoukuDialog$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/player/ui/widget/YoukuDialog$TYPE;

.field public static final enum normal:Lcom/youku/player/ui/widget/YoukuDialog$TYPE;

.field public static final enum picker:Lcom/youku/player/ui/widget/YoukuDialog$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    new-instance v0, Lcom/youku/player/ui/widget/YoukuDialog$TYPE;

    const-string v1, "normal"

    invoke-direct {v0, v1, v2}, Lcom/youku/player/ui/widget/YoukuDialog$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/player/ui/widget/YoukuDialog$TYPE;->normal:Lcom/youku/player/ui/widget/YoukuDialog$TYPE;

    new-instance v0, Lcom/youku/player/ui/widget/YoukuDialog$TYPE;

    const-string v1, "picker"

    invoke-direct {v0, v1, v3}, Lcom/youku/player/ui/widget/YoukuDialog$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/player/ui/widget/YoukuDialog$TYPE;->picker:Lcom/youku/player/ui/widget/YoukuDialog$TYPE;

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/youku/player/ui/widget/YoukuDialog$TYPE;

    sget-object v1, Lcom/youku/player/ui/widget/YoukuDialog$TYPE;->normal:Lcom/youku/player/ui/widget/YoukuDialog$TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/youku/player/ui/widget/YoukuDialog$TYPE;->picker:Lcom/youku/player/ui/widget/YoukuDialog$TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/youku/player/ui/widget/YoukuDialog$TYPE;->$VALUES:[Lcom/youku/player/ui/widget/YoukuDialog$TYPE;

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
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/player/ui/widget/YoukuDialog$TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    const-class v0, Lcom/youku/player/ui/widget/YoukuDialog$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/player/ui/widget/YoukuDialog$TYPE;

    return-object v0
.end method

.method public static values()[Lcom/youku/player/ui/widget/YoukuDialog$TYPE;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/youku/player/ui/widget/YoukuDialog$TYPE;->$VALUES:[Lcom/youku/player/ui/widget/YoukuDialog$TYPE;

    invoke-virtual {v0}, [Lcom/youku/player/ui/widget/YoukuDialog$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/player/ui/widget/YoukuDialog$TYPE;

    return-object v0
.end method
