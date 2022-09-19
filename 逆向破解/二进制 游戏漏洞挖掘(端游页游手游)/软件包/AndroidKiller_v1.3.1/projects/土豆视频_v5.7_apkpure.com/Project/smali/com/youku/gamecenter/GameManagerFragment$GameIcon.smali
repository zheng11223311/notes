.class Lcom/youku/gamecenter/GameManagerFragment$GameIcon;
.super Ljava/lang/Object;
.source "GameManagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/GameManagerFragment;
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
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-object p1, p0, Lcom/youku/gamecenter/GameManagerFragment$GameIcon;->id:Ljava/lang/String;

    .line 354
    iput-object p2, p0, Lcom/youku/gamecenter/GameManagerFragment$GameIcon;->icon:Landroid/graphics/Bitmap;

    .line 355
    return-void
.end method
