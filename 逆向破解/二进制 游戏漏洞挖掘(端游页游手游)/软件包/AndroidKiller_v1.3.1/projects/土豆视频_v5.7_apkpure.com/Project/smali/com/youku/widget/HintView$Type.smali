.class public final enum Lcom/youku/widget/HintView$Type;
.super Ljava/lang/Enum;
.source "HintView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/widget/HintView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/widget/HintView$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/widget/HintView$Type;

.field public static final enum CACHE_EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

.field public static final enum DETAILED_COMMENT:Lcom/youku/widget/HintView$Type;

.field public static final enum EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

.field public static final enum FAVORITE_PLAY_LIST_EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

.field public static final enum FAVORITE_VIDEO_EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

.field public static final enum HISTORY_EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

.field public static final enum LOAD_FAILED:Lcom/youku/widget/HintView$Type;

.field public static final enum MESSAGE_EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

.field public static final enum MESSAGE_LOGIN_HINT:Lcom/youku/widget/HintView$Type;

.field public static final enum ONLY_TEXT:Lcom/youku/widget/HintView$Type;

.field public static final enum SUBSCRIBE_EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

.field public static final enum SUBSCRIBE_UPDATE_EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

.field public static final enum TEXT_AND_BUT:Lcom/youku/widget/HintView$Type;

.field public static final enum UPLOAD_EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

.field public static final enum UPLOAD_LOGIN_HINT:Lcom/youku/widget/HintView$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    new-instance v0, Lcom/youku/widget/HintView$Type;

    const-string v1, "LOAD_FAILED"

    invoke-direct {v0, v1, v3}, Lcom/youku/widget/HintView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    .line 48
    new-instance v0, Lcom/youku/widget/HintView$Type;

    const-string v1, "EMPTY_PAGE"

    invoke-direct {v0, v1, v4}, Lcom/youku/widget/HintView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/widget/HintView$Type;->EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    .line 49
    new-instance v0, Lcom/youku/widget/HintView$Type;

    const-string v1, "ONLY_TEXT"

    invoke-direct {v0, v1, v5}, Lcom/youku/widget/HintView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/widget/HintView$Type;->ONLY_TEXT:Lcom/youku/widget/HintView$Type;

    .line 50
    new-instance v0, Lcom/youku/widget/HintView$Type;

    const-string v1, "TEXT_AND_BUT"

    invoke-direct {v0, v1, v6}, Lcom/youku/widget/HintView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/widget/HintView$Type;->TEXT_AND_BUT:Lcom/youku/widget/HintView$Type;

    .line 51
    new-instance v0, Lcom/youku/widget/HintView$Type;

    const-string v1, "HISTORY_EMPTY_PAGE"

    invoke-direct {v0, v1, v7}, Lcom/youku/widget/HintView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/widget/HintView$Type;->HISTORY_EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    .line 52
    new-instance v0, Lcom/youku/widget/HintView$Type;

    const-string v1, "FAVORITE_VIDEO_EMPTY_PAGE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/youku/widget/HintView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/widget/HintView$Type;->FAVORITE_VIDEO_EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    .line 53
    new-instance v0, Lcom/youku/widget/HintView$Type;

    const-string v1, "FAVORITE_PLAY_LIST_EMPTY_PAGE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/youku/widget/HintView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/widget/HintView$Type;->FAVORITE_PLAY_LIST_EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    .line 54
    new-instance v0, Lcom/youku/widget/HintView$Type;

    const-string v1, "MESSAGE_EMPTY_PAGE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/youku/widget/HintView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/widget/HintView$Type;->MESSAGE_EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    .line 55
    new-instance v0, Lcom/youku/widget/HintView$Type;

    const-string v1, "UPLOAD_EMPTY_PAGE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/youku/widget/HintView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/widget/HintView$Type;->UPLOAD_EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    .line 56
    new-instance v0, Lcom/youku/widget/HintView$Type;

    const-string v1, "UPLOAD_LOGIN_HINT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/youku/widget/HintView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/widget/HintView$Type;->UPLOAD_LOGIN_HINT:Lcom/youku/widget/HintView$Type;

    .line 57
    new-instance v0, Lcom/youku/widget/HintView$Type;

    const-string v1, "CACHE_EMPTY_PAGE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/youku/widget/HintView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/widget/HintView$Type;->CACHE_EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    .line 58
    new-instance v0, Lcom/youku/widget/HintView$Type;

    const-string v1, "SUBSCRIBE_EMPTY_PAGE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/youku/widget/HintView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/widget/HintView$Type;->SUBSCRIBE_EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    .line 59
    new-instance v0, Lcom/youku/widget/HintView$Type;

    const-string v1, "SUBSCRIBE_UPDATE_EMPTY_PAGE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/youku/widget/HintView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/widget/HintView$Type;->SUBSCRIBE_UPDATE_EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    .line 60
    new-instance v0, Lcom/youku/widget/HintView$Type;

    const-string v1, "MESSAGE_LOGIN_HINT"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/youku/widget/HintView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/widget/HintView$Type;->MESSAGE_LOGIN_HINT:Lcom/youku/widget/HintView$Type;

    .line 61
    new-instance v0, Lcom/youku/widget/HintView$Type;

    const-string v1, "DETAILED_COMMENT"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/youku/widget/HintView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/widget/HintView$Type;->DETAILED_COMMENT:Lcom/youku/widget/HintView$Type;

    .line 46
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/youku/widget/HintView$Type;

    sget-object v1, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/widget/HintView$Type;->EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/youku/widget/HintView$Type;->ONLY_TEXT:Lcom/youku/widget/HintView$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/youku/widget/HintView$Type;->TEXT_AND_BUT:Lcom/youku/widget/HintView$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/youku/widget/HintView$Type;->HISTORY_EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/youku/widget/HintView$Type;->FAVORITE_VIDEO_EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/youku/widget/HintView$Type;->FAVORITE_PLAY_LIST_EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/youku/widget/HintView$Type;->MESSAGE_EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/youku/widget/HintView$Type;->UPLOAD_EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/youku/widget/HintView$Type;->UPLOAD_LOGIN_HINT:Lcom/youku/widget/HintView$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/youku/widget/HintView$Type;->CACHE_EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/youku/widget/HintView$Type;->SUBSCRIBE_EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/youku/widget/HintView$Type;->SUBSCRIBE_UPDATE_EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/youku/widget/HintView$Type;->MESSAGE_LOGIN_HINT:Lcom/youku/widget/HintView$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/youku/widget/HintView$Type;->DETAILED_COMMENT:Lcom/youku/widget/HintView$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/youku/widget/HintView$Type;->$VALUES:[Lcom/youku/widget/HintView$Type;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/widget/HintView$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lcom/youku/widget/HintView$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/HintView$Type;

    return-object v0
.end method

.method public static values()[Lcom/youku/widget/HintView$Type;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/youku/widget/HintView$Type;->$VALUES:[Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0}, [Lcom/youku/widget/HintView$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/widget/HintView$Type;

    return-object v0
.end method
