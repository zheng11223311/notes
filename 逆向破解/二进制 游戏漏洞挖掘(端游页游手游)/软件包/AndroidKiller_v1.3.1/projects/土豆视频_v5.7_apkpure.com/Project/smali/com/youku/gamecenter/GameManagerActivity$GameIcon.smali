.class Lcom/youku/gamecenter/GameManagerActivity$GameIcon;
.super Ljava/lang/Object;
.source "GameManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/GameManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GameIcon"
.end annotation


# instance fields
.field icon:Landroid/graphics/Bitmap;

.field id:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    iput-object p1, p0, Lcom/youku/gamecenter/GameManagerActivity$GameIcon;->id:Ljava/lang/String;

    .line 409
    iput-object p2, p0, Lcom/youku/gamecenter/GameManagerActivity$GameIcon;->icon:Landroid/graphics/Bitmap;

    .line 410
    return-void
.end method
