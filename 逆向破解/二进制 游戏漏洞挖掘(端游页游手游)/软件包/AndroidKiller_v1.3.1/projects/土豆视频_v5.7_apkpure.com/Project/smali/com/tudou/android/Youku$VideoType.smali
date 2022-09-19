.class public final enum Lcom/tudou/android/Youku$VideoType;
.super Ljava/lang/Enum;
.source "Youku.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/android/Youku;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tudou/android/Youku$VideoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tudou/android/Youku$VideoType;

.field public static final enum ALBUM:Lcom/tudou/android/Youku$VideoType;

.field public static final enum PLAYLIST:Lcom/tudou/android/Youku$VideoType;

.field public static final enum UGC:Lcom/tudou/android/Youku$VideoType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 206
    new-instance v0, Lcom/tudou/android/Youku$VideoType;

    const-string v1, "ALBUM"

    invoke-direct {v0, v1, v2}, Lcom/tudou/android/Youku$VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tudou/android/Youku$VideoType;->ALBUM:Lcom/tudou/android/Youku$VideoType;

    new-instance v0, Lcom/tudou/android/Youku$VideoType;

    const-string v1, "PLAYLIST"

    invoke-direct {v0, v1, v3}, Lcom/tudou/android/Youku$VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tudou/android/Youku$VideoType;->PLAYLIST:Lcom/tudou/android/Youku$VideoType;

    new-instance v0, Lcom/tudou/android/Youku$VideoType;

    const-string v1, "UGC"

    invoke-direct {v0, v1, v4}, Lcom/tudou/android/Youku$VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tudou/android/Youku$VideoType;->UGC:Lcom/tudou/android/Youku$VideoType;

    .line 205
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tudou/android/Youku$VideoType;

    sget-object v1, Lcom/tudou/android/Youku$VideoType;->ALBUM:Lcom/tudou/android/Youku$VideoType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tudou/android/Youku$VideoType;->PLAYLIST:Lcom/tudou/android/Youku$VideoType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tudou/android/Youku$VideoType;->UGC:Lcom/tudou/android/Youku$VideoType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tudou/android/Youku$VideoType;->$VALUES:[Lcom/tudou/android/Youku$VideoType;

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
    .line 205
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static create(Lcom/youku/player/module/VideoUrlInfo;)Lcom/tudou/android/Youku$VideoType;
    .locals 2
    .param p0, "info"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "tVideoType":Lcom/tudou/android/Youku$VideoType;
    iget-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->playlistCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    sget-object v0, Lcom/tudou/android/Youku$VideoType;->PLAYLIST:Lcom/tudou/android/Youku$VideoType;

    .line 217
    :goto_0
    return-object v0

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/youku/player/module/VideoUrlInfo;->getShowId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 213
    sget-object v0, Lcom/tudou/android/Youku$VideoType;->ALBUM:Lcom/tudou/android/Youku$VideoType;

    goto :goto_0

    .line 215
    :cond_1
    sget-object v0, Lcom/tudou/android/Youku$VideoType;->UGC:Lcom/tudou/android/Youku$VideoType;

    goto :goto_0
.end method

.method public static create(Lcom/youku/vo/NewVideoDetail;)Lcom/tudou/android/Youku$VideoType;
    .locals 2
    .param p0, "detail"    # Lcom/youku/vo/NewVideoDetail;

    .prologue
    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, "tVideoType":Lcom/tudou/android/Youku$VideoType;
    if-eqz p0, :cond_0

    .line 223
    iget-object v1, p0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v1, v1, Lcom/youku/vo/NewVideoDetail$Detail;->plid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 224
    sget-object v0, Lcom/tudou/android/Youku$VideoType;->PLAYLIST:Lcom/tudou/android/Youku$VideoType;

    .line 231
    :cond_0
    :goto_0
    return-object v0

    .line 225
    :cond_1
    iget-object v1, p0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v1, v1, Lcom/youku/vo/NewVideoDetail$Detail;->aid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 226
    sget-object v0, Lcom/tudou/android/Youku$VideoType;->ALBUM:Lcom/tudou/android/Youku$VideoType;

    goto :goto_0

    .line 228
    :cond_2
    sget-object v0, Lcom/tudou/android/Youku$VideoType;->UGC:Lcom/tudou/android/Youku$VideoType;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tudou/android/Youku$VideoType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 205
    const-class v0, Lcom/tudou/android/Youku$VideoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tudou/android/Youku$VideoType;

    return-object v0
.end method

.method public static values()[Lcom/tudou/android/Youku$VideoType;
    .locals 1

    .prologue
    .line 205
    sget-object v0, Lcom/tudou/android/Youku$VideoType;->$VALUES:[Lcom/tudou/android/Youku$VideoType;

    invoke-virtual {v0}, [Lcom/tudou/android/Youku$VideoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tudou/android/Youku$VideoType;

    return-object v0
.end method
