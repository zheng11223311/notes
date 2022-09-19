.class public final enum Lcom/youku/local/MediaDatabase$MediaColumn;
.super Ljava/lang/Enum;
.source "MediaDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/local/MediaDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaColumn"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/local/MediaDatabase$MediaColumn;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/local/MediaDatabase$MediaColumn;

.field public static final enum MEDIA_DURATION:Lcom/youku/local/MediaDatabase$MediaColumn;

.field public static final enum MEDIA_PATH:Lcom/youku/local/MediaDatabase$MediaColumn;

.field public static final enum MEDIA_PROGRESS:Lcom/youku/local/MediaDatabase$MediaColumn;

.field public static final enum MEDIA_TABLE_NAME:Lcom/youku/local/MediaDatabase$MediaColumn;

.field public static final enum MEDIA_THUMBNAIL:Lcom/youku/local/MediaDatabase$MediaColumn;

.field public static final enum MEDIA_TITLE:Lcom/youku/local/MediaDatabase$MediaColumn;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    new-instance v0, Lcom/youku/local/MediaDatabase$MediaColumn;

    const-string v1, "MEDIA_TABLE_NAME"

    invoke-direct {v0, v1, v3}, Lcom/youku/local/MediaDatabase$MediaColumn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/local/MediaDatabase$MediaColumn;->MEDIA_TABLE_NAME:Lcom/youku/local/MediaDatabase$MediaColumn;

    new-instance v0, Lcom/youku/local/MediaDatabase$MediaColumn;

    const-string v1, "MEDIA_PATH"

    invoke-direct {v0, v1, v4}, Lcom/youku/local/MediaDatabase$MediaColumn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/local/MediaDatabase$MediaColumn;->MEDIA_PATH:Lcom/youku/local/MediaDatabase$MediaColumn;

    new-instance v0, Lcom/youku/local/MediaDatabase$MediaColumn;

    const-string v1, "MEDIA_DURATION"

    invoke-direct {v0, v1, v5}, Lcom/youku/local/MediaDatabase$MediaColumn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/local/MediaDatabase$MediaColumn;->MEDIA_DURATION:Lcom/youku/local/MediaDatabase$MediaColumn;

    new-instance v0, Lcom/youku/local/MediaDatabase$MediaColumn;

    const-string v1, "MEDIA_PROGRESS"

    invoke-direct {v0, v1, v6}, Lcom/youku/local/MediaDatabase$MediaColumn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/local/MediaDatabase$MediaColumn;->MEDIA_PROGRESS:Lcom/youku/local/MediaDatabase$MediaColumn;

    new-instance v0, Lcom/youku/local/MediaDatabase$MediaColumn;

    const-string v1, "MEDIA_TITLE"

    invoke-direct {v0, v1, v7}, Lcom/youku/local/MediaDatabase$MediaColumn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/local/MediaDatabase$MediaColumn;->MEDIA_TITLE:Lcom/youku/local/MediaDatabase$MediaColumn;

    new-instance v0, Lcom/youku/local/MediaDatabase$MediaColumn;

    const-string v1, "MEDIA_THUMBNAIL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/youku/local/MediaDatabase$MediaColumn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/local/MediaDatabase$MediaColumn;->MEDIA_THUMBNAIL:Lcom/youku/local/MediaDatabase$MediaColumn;

    .line 35
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/youku/local/MediaDatabase$MediaColumn;

    sget-object v1, Lcom/youku/local/MediaDatabase$MediaColumn;->MEDIA_TABLE_NAME:Lcom/youku/local/MediaDatabase$MediaColumn;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/local/MediaDatabase$MediaColumn;->MEDIA_PATH:Lcom/youku/local/MediaDatabase$MediaColumn;

    aput-object v1, v0, v4

    sget-object v1, Lcom/youku/local/MediaDatabase$MediaColumn;->MEDIA_DURATION:Lcom/youku/local/MediaDatabase$MediaColumn;

    aput-object v1, v0, v5

    sget-object v1, Lcom/youku/local/MediaDatabase$MediaColumn;->MEDIA_PROGRESS:Lcom/youku/local/MediaDatabase$MediaColumn;

    aput-object v1, v0, v6

    sget-object v1, Lcom/youku/local/MediaDatabase$MediaColumn;->MEDIA_TITLE:Lcom/youku/local/MediaDatabase$MediaColumn;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/youku/local/MediaDatabase$MediaColumn;->MEDIA_THUMBNAIL:Lcom/youku/local/MediaDatabase$MediaColumn;

    aput-object v2, v0, v1

    sput-object v0, Lcom/youku/local/MediaDatabase$MediaColumn;->$VALUES:[Lcom/youku/local/MediaDatabase$MediaColumn;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/local/MediaDatabase$MediaColumn;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lcom/youku/local/MediaDatabase$MediaColumn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/local/MediaDatabase$MediaColumn;

    return-object v0
.end method

.method public static values()[Lcom/youku/local/MediaDatabase$MediaColumn;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/youku/local/MediaDatabase$MediaColumn;->$VALUES:[Lcom/youku/local/MediaDatabase$MediaColumn;

    invoke-virtual {v0}, [Lcom/youku/local/MediaDatabase$MediaColumn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/local/MediaDatabase$MediaColumn;

    return-object v0
.end method
