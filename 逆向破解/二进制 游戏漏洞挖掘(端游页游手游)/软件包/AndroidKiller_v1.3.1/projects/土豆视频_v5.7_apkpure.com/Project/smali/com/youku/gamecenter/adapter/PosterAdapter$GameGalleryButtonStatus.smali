.class public final enum Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;
.super Ljava/lang/Enum;
.source "PosterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/adapter/PosterAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GameGalleryButtonStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;

.field public static final enum DOWNLOAD_DOWN:Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;

.field public static final enum ING:Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;

.field public static final enum INSTALL:Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;

.field public static final enum OPEN:Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;


# instance fields
.field public container_bg:I

.field public text:I

.field public text_color:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 212
    new-instance v0, Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;

    const-string v1, "INSTALL"

    sget v3, Lcom/youku/gamecenter/R$string;->str_download:I

    sget v4, Lcom/youku/gamecenter/R$drawable;->game_gallery_button_bg_bule_dr_selector_tudou:I

    sget v5, Lcom/youku/gamecenter/R$color;->box_button_text_color_at_blue_background:I

    invoke-direct/range {v0 .. v5}, Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;->INSTALL:Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;

    .line 217
    new-instance v3, Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;

    const-string v4, "ING"

    sget v6, Lcom/youku/gamecenter/R$string;->playview_str_ing:I

    sget v7, Lcom/youku/gamecenter/R$drawable;->game_gallery_button_bg_grey:I

    sget v8, Lcom/youku/gamecenter/R$color;->game_channel_gallery_text_color_disable:I

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;->ING:Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;

    .line 222
    new-instance v3, Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;

    const-string v4, "OPEN"

    sget v6, Lcom/youku/gamecenter/R$string;->playview_str_open:I

    sget v7, Lcom/youku/gamecenter/R$drawable;->game_gallery_button_bg_tudou:I

    sget v8, Lcom/youku/gamecenter/R$color;->box_button_text_color_at_blue_background:I

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;->OPEN:Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;

    .line 227
    new-instance v3, Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;

    const-string v4, "DOWNLOAD_DOWN"

    sget v6, Lcom/youku/gamecenter/R$string;->playview_str_install:I

    sget v7, Lcom/youku/gamecenter/R$drawable;->game_gallery_button_bg_yellow:I

    sget v8, Lcom/youku/gamecenter/R$color;->box_button_text_color_at_blue_background:I

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;->DOWNLOAD_DOWN:Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;

    .line 210
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;

    sget-object v1, Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;->INSTALL:Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;->ING:Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;

    aput-object v1, v0, v9

    sget-object v1, Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;->OPEN:Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;

    aput-object v1, v0, v10

    sget-object v1, Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;->DOWNLOAD_DOWN:Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;

    aput-object v1, v0, v11

    sput-object v0, Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;->$VALUES:[Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .param p3, "text"    # I
    .param p4, "container_bg"    # I
    .param p5, "text_color"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .prologue
    .line 235
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 236
    iput p3, p0, Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;->text:I

    .line 237
    iput p4, p0, Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;->container_bg:I

    .line 238
    iput p5, p0, Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;->text_color:I

    .line 239
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 210
    const-class v0, Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;

    return-object v0
.end method

.method public static values()[Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;
    .locals 1

    .prologue
    .line 210
    sget-object v0, Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;->$VALUES:[Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;

    invoke-virtual {v0}, [Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;

    return-object v0
.end method
