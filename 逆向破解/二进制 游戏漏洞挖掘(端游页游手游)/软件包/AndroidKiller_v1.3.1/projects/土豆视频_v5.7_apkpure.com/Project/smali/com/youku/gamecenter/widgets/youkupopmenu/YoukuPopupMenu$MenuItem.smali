.class public Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItem;
.super Ljava/lang/Object;
.source "YoukuPopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuItem"
.end annotation


# instance fields
.field private icon:Landroid/graphics/drawable/Drawable;

.field private intent:Landroid/content/Intent;

.field private itemId:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItem;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItem;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItem;->itemId:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 271
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItem;->intent:Landroid/content/Intent;

    .line 279
    return-void
.end method

.method public setItemId(I)V
    .locals 0
    .param p1, "itemId"    # I

    .prologue
    .line 254
    iput p1, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItem;->itemId:I

    .line 255
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItem;->title:Ljava/lang/String;

    .line 263
    return-void
.end method
