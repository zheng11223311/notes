.class public final enum Lcom/youku/widget/TudouDialog$TYPE;
.super Ljava/lang/Enum;
.source "TudouDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/widget/TudouDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/widget/TudouDialog$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/widget/TudouDialog$TYPE;

.field public static final enum chat_sure:Lcom/youku/widget/TudouDialog$TYPE;

.field public static final enum normal:Lcom/youku/widget/TudouDialog$TYPE;

.field public static final enum picker:Lcom/youku/widget/TudouDialog$TYPE;

.field public static final enum three:Lcom/youku/widget/TudouDialog$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/youku/widget/TudouDialog$TYPE;

    const-string v1, "normal"

    invoke-direct {v0, v1, v2}, Lcom/youku/widget/TudouDialog$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/widget/TudouDialog$TYPE;->normal:Lcom/youku/widget/TudouDialog$TYPE;

    new-instance v0, Lcom/youku/widget/TudouDialog$TYPE;

    const-string/jumbo v1, "three"

    invoke-direct {v0, v1, v3}, Lcom/youku/widget/TudouDialog$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/widget/TudouDialog$TYPE;->three:Lcom/youku/widget/TudouDialog$TYPE;

    new-instance v0, Lcom/youku/widget/TudouDialog$TYPE;

    const-string v1, "picker"

    invoke-direct {v0, v1, v4}, Lcom/youku/widget/TudouDialog$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/widget/TudouDialog$TYPE;->picker:Lcom/youku/widget/TudouDialog$TYPE;

    new-instance v0, Lcom/youku/widget/TudouDialog$TYPE;

    const-string v1, "chat_sure"

    invoke-direct {v0, v1, v5}, Lcom/youku/widget/TudouDialog$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/widget/TudouDialog$TYPE;->chat_sure:Lcom/youku/widget/TudouDialog$TYPE;

    .line 45
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/youku/widget/TudouDialog$TYPE;

    sget-object v1, Lcom/youku/widget/TudouDialog$TYPE;->normal:Lcom/youku/widget/TudouDialog$TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/youku/widget/TudouDialog$TYPE;->three:Lcom/youku/widget/TudouDialog$TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/widget/TudouDialog$TYPE;->picker:Lcom/youku/widget/TudouDialog$TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/youku/widget/TudouDialog$TYPE;->chat_sure:Lcom/youku/widget/TudouDialog$TYPE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/youku/widget/TudouDialog$TYPE;->$VALUES:[Lcom/youku/widget/TudouDialog$TYPE;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/widget/TudouDialog$TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    const-class v0, Lcom/youku/widget/TudouDialog$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/TudouDialog$TYPE;

    return-object v0
.end method

.method public static values()[Lcom/youku/widget/TudouDialog$TYPE;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/youku/widget/TudouDialog$TYPE;->$VALUES:[Lcom/youku/widget/TudouDialog$TYPE;

    invoke-virtual {v0}, [Lcom/youku/widget/TudouDialog$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/widget/TudouDialog$TYPE;

    return-object v0
.end method
