.class public Lcom/sea_monster/cache/CacheableImageView;
.super Landroid/widget/ImageView;
.source "CacheableImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method private static onDrawableSet(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 27
    instance-of v0, p0, Lcom/sea_monster/cache/CacheableBitmapDrawable;

    if-eqz v0, :cond_0

    .line 28
    check-cast p0, Lcom/sea_monster/cache/CacheableBitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sea_monster/cache/CacheableBitmapDrawable;->setBeingUsed(Z)V

    .line 30
    :cond_0
    return-void
.end method

.method private static onDrawableUnset(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 33
    instance-of v0, p0, Lcom/sea_monster/cache/CacheableBitmapDrawable;

    if-eqz v0, :cond_0

    .line 34
    check-cast p0, Lcom/sea_monster/cache/CacheableBitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sea_monster/cache/CacheableBitmapDrawable;->setBeingUsed(Z)V

    .line 36
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sea_monster/cache/CacheableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/sea_monster/cache/CacheableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 55
    .local v0, "previousDrawable":Landroid/graphics/drawable/Drawable;
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    if-eq p1, v0, :cond_0

    .line 58
    invoke-static {p1}, Lcom/sea_monster/cache/CacheableImageView;->onDrawableSet(Landroid/graphics/drawable/Drawable;)V

    .line 59
    invoke-static {v0}, Lcom/sea_monster/cache/CacheableImageView;->onDrawableUnset(Landroid/graphics/drawable/Drawable;)V

    .line 61
    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/sea_monster/cache/CacheableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 66
    .local v0, "previousDrawable":Landroid/graphics/drawable/Drawable;
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 67
    invoke-static {v0}, Lcom/sea_monster/cache/CacheableImageView;->onDrawableUnset(Landroid/graphics/drawable/Drawable;)V

    .line 68
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/sea_monster/cache/CacheableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 73
    .local v0, "previousDrawable":Landroid/graphics/drawable/Drawable;
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 74
    invoke-static {v0}, Lcom/sea_monster/cache/CacheableImageView;->onDrawableUnset(Landroid/graphics/drawable/Drawable;)V

    .line 75
    return-void
.end method
