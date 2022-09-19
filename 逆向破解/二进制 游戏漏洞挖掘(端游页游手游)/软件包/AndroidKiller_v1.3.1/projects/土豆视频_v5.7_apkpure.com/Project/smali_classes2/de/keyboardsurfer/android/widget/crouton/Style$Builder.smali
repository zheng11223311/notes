.class public Lde/keyboardsurfer/android/widget/crouton/Style$Builder;
.super Ljava/lang/Object;
.source "Style.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/keyboardsurfer/android/widget/crouton/Style;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private backgroundColorResourceId:I

.field private backgroundColorValue:I

.field private backgroundDrawableResourceId:I

.field private configuration:Lde/keyboardsurfer/android/widget/crouton/Configuration;

.field private fontName:Ljava/lang/String;

.field private fontNameResId:I

.field private gravity:I

.field private heightDimensionResId:I

.field private heightInPixels:I

.field private imageDrawable:Landroid/graphics/drawable/Drawable;

.field private imageResId:I

.field private imageScaleType:Landroid/widget/ImageView$ScaleType;

.field private isTileEnabled:Z

.field private paddingDimensionResId:I

.field private paddingInPixels:I

.field private textAppearanceResId:I

.field private textColorResourceId:I

.field private textColorValue:I

.field private textShadowColorResId:I

.field private textShadowDx:F

.field private textShadowDy:F

.field private textShadowRadius:F

.field private textSize:I

.field private widthDimensionResId:I

.field private widthInPixels:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    sget-object v0, Lde/keyboardsurfer/android/widget/crouton/Configuration;->DEFAULT:Lde/keyboardsurfer/android/widget/crouton/Configuration;

    iput-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->configuration:Lde/keyboardsurfer/android/widget/crouton/Configuration;

    .line 214
    const/16 v0, 0xa

    iput v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->paddingInPixels:I

    .line 215
    const v0, 0x1060012

    iput v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->backgroundColorResourceId:I

    .line 216
    iput v1, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->backgroundDrawableResourceId:I

    .line 217
    iput v2, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->backgroundColorValue:I

    .line 218
    iput-boolean v1, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->isTileEnabled:Z

    .line 219
    const v0, 0x106000b

    iput v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->textColorResourceId:I

    .line 220
    iput v2, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->textColorValue:I

    .line 221
    const/4 v0, -0x2

    iput v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->heightInPixels:I

    .line 222
    iput v2, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->widthInPixels:I

    .line 223
    const/16 v0, 0x11

    iput v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->gravity:I

    .line 224
    iput-object v3, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->imageDrawable:Landroid/graphics/drawable/Drawable;

    .line 225
    iput v1, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->imageResId:I

    .line 226
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->imageScaleType:Landroid/widget/ImageView$ScaleType;

    .line 227
    iput-object v3, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->fontName:Ljava/lang/String;

    .line 228
    iput v1, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->fontNameResId:I

    .line 229
    return-void
.end method

.method public constructor <init>(Lde/keyboardsurfer/android/widget/crouton/Style;)V
    .locals 1
    .param p1, "baseStyle"    # Lde/keyboardsurfer/android/widget/crouton/Style;

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iget-object v0, p1, Lde/keyboardsurfer/android/widget/crouton/Style;->configuration:Lde/keyboardsurfer/android/widget/crouton/Configuration;

    iput-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->configuration:Lde/keyboardsurfer/android/widget/crouton/Configuration;

    .line 239
    iget v0, p1, Lde/keyboardsurfer/android/widget/crouton/Style;->backgroundColorValue:I

    iput v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->backgroundColorValue:I

    .line 240
    iget v0, p1, Lde/keyboardsurfer/android/widget/crouton/Style;->backgroundColorResourceId:I

    iput v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->backgroundColorResourceId:I

    .line 241
    iget v0, p1, Lde/keyboardsurfer/android/widget/crouton/Style;->backgroundDrawableResourceId:I

    iput v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->backgroundDrawableResourceId:I

    .line 242
    iget-boolean v0, p1, Lde/keyboardsurfer/android/widget/crouton/Style;->isTileEnabled:Z

    iput-boolean v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->isTileEnabled:Z

    .line 243
    iget v0, p1, Lde/keyboardsurfer/android/widget/crouton/Style;->textColorResourceId:I

    iput v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->textColorResourceId:I

    .line 244
    iget v0, p1, Lde/keyboardsurfer/android/widget/crouton/Style;->textColorValue:I

    iput v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->textColorValue:I

    .line 245
    iget v0, p1, Lde/keyboardsurfer/android/widget/crouton/Style;->heightInPixels:I

    iput v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->heightInPixels:I

    .line 246
    iget v0, p1, Lde/keyboardsurfer/android/widget/crouton/Style;->heightDimensionResId:I

    iput v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->heightDimensionResId:I

    .line 247
    iget v0, p1, Lde/keyboardsurfer/android/widget/crouton/Style;->widthInPixels:I

    iput v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->widthInPixels:I

    .line 248
    iget v0, p1, Lde/keyboardsurfer/android/widget/crouton/Style;->widthDimensionResId:I

    iput v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->widthDimensionResId:I

    .line 249
    iget v0, p1, Lde/keyboardsurfer/android/widget/crouton/Style;->gravity:I

    iput v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->gravity:I

    .line 250
    iget-object v0, p1, Lde/keyboardsurfer/android/widget/crouton/Style;->imageDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->imageDrawable:Landroid/graphics/drawable/Drawable;

    .line 251
    iget v0, p1, Lde/keyboardsurfer/android/widget/crouton/Style;->textSize:I

    iput v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->textSize:I

    .line 252
    iget v0, p1, Lde/keyboardsurfer/android/widget/crouton/Style;->textShadowColorResId:I

    iput v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->textShadowColorResId:I

    .line 253
    iget v0, p1, Lde/keyboardsurfer/android/widget/crouton/Style;->textShadowRadius:F

    iput v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->textShadowRadius:F

    .line 254
    iget v0, p1, Lde/keyboardsurfer/android/widget/crouton/Style;->textShadowDx:F

    iput v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->textShadowDx:F

    .line 255
    iget v0, p1, Lde/keyboardsurfer/android/widget/crouton/Style;->textShadowDy:F

    iput v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->textShadowDy:F

    .line 256
    iget v0, p1, Lde/keyboardsurfer/android/widget/crouton/Style;->textAppearanceResId:I

    iput v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->textAppearanceResId:I

    .line 257
    iget v0, p1, Lde/keyboardsurfer/android/widget/crouton/Style;->imageResId:I

    iput v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->imageResId:I

    .line 258
    iget-object v0, p1, Lde/keyboardsurfer/android/widget/crouton/Style;->imageScaleType:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->imageScaleType:Landroid/widget/ImageView$ScaleType;

    .line 259
    iget v0, p1, Lde/keyboardsurfer/android/widget/crouton/Style;->paddingInPixels:I

    iput v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->paddingInPixels:I

    .line 260
    iget v0, p1, Lde/keyboardsurfer/android/widget/crouton/Style;->paddingDimensionResId:I

    iput v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->paddingDimensionResId:I

    .line 261
    iget-object v0, p1, Lde/keyboardsurfer/android/widget/crouton/Style;->fontName:Ljava/lang/String;

    iput-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->fontName:Ljava/lang/String;

    .line 262
    iget v0, p1, Lde/keyboardsurfer/android/widget/crouton/Style;->fontNameResId:I

    iput v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->fontNameResId:I

    .line 263
    return-void
.end method

.method static synthetic access$000(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)Lde/keyboardsurfer/android/widget/crouton/Configuration;
    .locals 1
    .param p0, "x0"    # Lde/keyboardsurfer/android/widget/crouton/Style$Builder;

    .prologue
    .line 184
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->configuration:Lde/keyboardsurfer/android/widget/crouton/Configuration;

    return-object v0
.end method

.method static synthetic access$100(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)I
    .locals 1
    .param p0, "x0"    # Lde/keyboardsurfer/android/widget/crouton/Style$Builder;

    .prologue
    .line 184
    iget v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->backgroundColorResourceId:I

    return v0
.end method

.method static synthetic access$1000(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)I
    .locals 1
    .param p0, "x0"    # Lde/keyboardsurfer/android/widget/crouton/Style$Builder;

    .prologue
    .line 184
    iget v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->gravity:I

    return v0
.end method

.method static synthetic access$1100(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lde/keyboardsurfer/android/widget/crouton/Style$Builder;

    .prologue
    .line 184
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->imageDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1200(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)I
    .locals 1
    .param p0, "x0"    # Lde/keyboardsurfer/android/widget/crouton/Style$Builder;

    .prologue
    .line 184
    iget v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->textSize:I

    return v0
.end method

.method static synthetic access$1300(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)I
    .locals 1
    .param p0, "x0"    # Lde/keyboardsurfer/android/widget/crouton/Style$Builder;

    .prologue
    .line 184
    iget v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->textShadowColorResId:I

    return v0
.end method

.method static synthetic access$1400(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)F
    .locals 1
    .param p0, "x0"    # Lde/keyboardsurfer/android/widget/crouton/Style$Builder;

    .prologue
    .line 184
    iget v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->textShadowRadius:F

    return v0
.end method

.method static synthetic access$1500(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)F
    .locals 1
    .param p0, "x0"    # Lde/keyboardsurfer/android/widget/crouton/Style$Builder;

    .prologue
    .line 184
    iget v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->textShadowDx:F

    return v0
.end method

.method static synthetic access$1600(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)F
    .locals 1
    .param p0, "x0"    # Lde/keyboardsurfer/android/widget/crouton/Style$Builder;

    .prologue
    .line 184
    iget v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->textShadowDy:F

    return v0
.end method

.method static synthetic access$1700(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)I
    .locals 1
    .param p0, "x0"    # Lde/keyboardsurfer/android/widget/crouton/Style$Builder;

    .prologue
    .line 184
    iget v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->textAppearanceResId:I

    return v0
.end method

.method static synthetic access$1800(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)I
    .locals 1
    .param p0, "x0"    # Lde/keyboardsurfer/android/widget/crouton/Style$Builder;

    .prologue
    .line 184
    iget v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->imageResId:I

    return v0
.end method

.method static synthetic access$1900(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)Landroid/widget/ImageView$ScaleType;
    .locals 1
    .param p0, "x0"    # Lde/keyboardsurfer/android/widget/crouton/Style$Builder;

    .prologue
    .line 184
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->imageScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method static synthetic access$200(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)I
    .locals 1
    .param p0, "x0"    # Lde/keyboardsurfer/android/widget/crouton/Style$Builder;

    .prologue
    .line 184
    iget v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->backgroundDrawableResourceId:I

    return v0
.end method

.method static synthetic access$2000(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)I
    .locals 1
    .param p0, "x0"    # Lde/keyboardsurfer/android/widget/crouton/Style$Builder;

    .prologue
    .line 184
    iget v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->paddingInPixels:I

    return v0
.end method

.method static synthetic access$2100(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)I
    .locals 1
    .param p0, "x0"    # Lde/keyboardsurfer/android/widget/crouton/Style$Builder;

    .prologue
    .line 184
    iget v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->paddingDimensionResId:I

    return v0
.end method

.method static synthetic access$2200(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)I
    .locals 1
    .param p0, "x0"    # Lde/keyboardsurfer/android/widget/crouton/Style$Builder;

    .prologue
    .line 184
    iget v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->backgroundColorValue:I

    return v0
.end method

.method static synthetic access$2300(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lde/keyboardsurfer/android/widget/crouton/Style$Builder;

    .prologue
    .line 184
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->fontName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)I
    .locals 1
    .param p0, "x0"    # Lde/keyboardsurfer/android/widget/crouton/Style$Builder;

    .prologue
    .line 184
    iget v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->fontNameResId:I

    return v0
.end method

.method static synthetic access$300(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lde/keyboardsurfer/android/widget/crouton/Style$Builder;

    .prologue
    .line 184
    iget-boolean v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->isTileEnabled:Z

    return v0
.end method

.method static synthetic access$400(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)I
    .locals 1
    .param p0, "x0"    # Lde/keyboardsurfer/android/widget/crouton/Style$Builder;

    .prologue
    .line 184
    iget v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->textColorResourceId:I

    return v0
.end method

.method static synthetic access$500(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)I
    .locals 1
    .param p0, "x0"    # Lde/keyboardsurfer/android/widget/crouton/Style$Builder;

    .prologue
    .line 184
    iget v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->textColorValue:I

    return v0
.end method

.method static synthetic access$600(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)I
    .locals 1
    .param p0, "x0"    # Lde/keyboardsurfer/android/widget/crouton/Style$Builder;

    .prologue
    .line 184
    iget v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->heightInPixels:I

    return v0
.end method

.method static synthetic access$700(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)I
    .locals 1
    .param p0, "x0"    # Lde/keyboardsurfer/android/widget/crouton/Style$Builder;

    .prologue
    .line 184
    iget v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->heightDimensionResId:I

    return v0
.end method

.method static synthetic access$800(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)I
    .locals 1
    .param p0, "x0"    # Lde/keyboardsurfer/android/widget/crouton/Style$Builder;

    .prologue
    .line 184
    iget v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->widthInPixels:I

    return v0
.end method

.method static synthetic access$900(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)I
    .locals 1
    .param p0, "x0"    # Lde/keyboardsurfer/android/widget/crouton/Style$Builder;

    .prologue
    .line 184
    iget v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->widthDimensionResId:I

    return v0
.end method


# virtual methods
.method public build()Lde/keyboardsurfer/android/widget/crouton/Style;
    .locals 2

    .prologue
    .line 530
    new-instance v0, Lde/keyboardsurfer/android/widget/crouton/Style;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lde/keyboardsurfer/android/widget/crouton/Style;-><init>(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;Lde/keyboardsurfer/android/widget/crouton/Style$1;)V

    return-object v0
.end method

.method public setBackgroundColor(I)Lde/keyboardsurfer/android/widget/crouton/Style$Builder;
    .locals 0
    .param p1, "backgroundColorResourceId"    # I

    .prologue
    .line 286
    iput p1, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->backgroundColorResourceId:I

    .line 288
    return-object p0
.end method

.method public setBackgroundColorValue(I)Lde/keyboardsurfer/android/widget/crouton/Style$Builder;
    .locals 0
    .param p1, "backgroundColorValue"    # I

    .prologue
    .line 300
    iput p1, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->backgroundColorValue:I

    .line 301
    return-object p0
.end method

.method public setBackgroundDrawable(I)Lde/keyboardsurfer/android/widget/crouton/Style$Builder;
    .locals 0
    .param p1, "backgroundDrawableResourceId"    # I

    .prologue
    .line 313
    iput p1, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->backgroundDrawableResourceId:I

    .line 315
    return-object p0
.end method

.method public setConfiguration(Lde/keyboardsurfer/android/widget/crouton/Configuration;)Lde/keyboardsurfer/android/widget/crouton/Style$Builder;
    .locals 0
    .param p1, "configuration"    # Lde/keyboardsurfer/android/widget/crouton/Configuration;

    .prologue
    .line 273
    iput-object p1, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->configuration:Lde/keyboardsurfer/android/widget/crouton/Configuration;

    .line 274
    return-object p0
.end method

.method public setFontName(Ljava/lang/String;)Lde/keyboardsurfer/android/widget/crouton/Style$Builder;
    .locals 0
    .param p1, "fontName"    # Ljava/lang/String;

    .prologue
    .line 518
    iput-object p1, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->fontName:Ljava/lang/String;

    .line 519
    return-object p0
.end method

.method public setFontNameResId(I)Lde/keyboardsurfer/android/widget/crouton/Style$Builder;
    .locals 0
    .param p1, "fontNameResId"    # I

    .prologue
    .line 524
    iput p1, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->fontNameResId:I

    .line 525
    return-object p0
.end method

.method public setGravity(I)Lde/keyboardsurfer/android/widget/crouton/Style$Builder;
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 429
    iput p1, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->gravity:I

    .line 431
    return-object p0
.end method

.method public setHeight(I)Lde/keyboardsurfer/android/widget/crouton/Style$Builder;
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 329
    iput p1, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->heightInPixels:I

    .line 331
    return-object p0
.end method

.method public setHeightDimensionResId(I)Lde/keyboardsurfer/android/widget/crouton/Style$Builder;
    .locals 0
    .param p1, "heightDimensionResId"    # I

    .prologue
    .line 343
    iput p1, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->heightDimensionResId:I

    .line 345
    return-object p0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)Lde/keyboardsurfer/android/widget/crouton/Style$Builder;
    .locals 0
    .param p1, "imageDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 443
    iput-object p1, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->imageDrawable:Landroid/graphics/drawable/Drawable;

    .line 445
    return-object p0
.end method

.method public setImageResource(I)Lde/keyboardsurfer/android/widget/crouton/Style$Builder;
    .locals 0
    .param p1, "imageResId"    # I

    .prologue
    .line 457
    iput p1, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->imageResId:I

    .line 459
    return-object p0
.end method

.method public setImageScaleType(Landroid/widget/ImageView$ScaleType;)Lde/keyboardsurfer/android/widget/crouton/Style$Builder;
    .locals 0
    .param p1, "imageScaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 500
    iput-object p1, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->imageScaleType:Landroid/widget/ImageView$ScaleType;

    .line 501
    return-object p0
.end method

.method public setPaddingDimensionResId(I)Lde/keyboardsurfer/android/widget/crouton/Style$Builder;
    .locals 0
    .param p1, "paddingResId"    # I

    .prologue
    .line 512
    iput p1, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->paddingDimensionResId:I

    .line 513
    return-object p0
.end method

.method public setPaddingInPixels(I)Lde/keyboardsurfer/android/widget/crouton/Style$Builder;
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 506
    iput p1, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->paddingInPixels:I

    .line 507
    return-object p0
.end method

.method public setTextAppearance(I)Lde/keyboardsurfer/android/widget/crouton/Style$Builder;
    .locals 0
    .param p1, "textAppearanceResId"    # I

    .prologue
    .line 494
    iput p1, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->textAppearanceResId:I

    .line 495
    return-object p0
.end method

.method public setTextColor(I)Lde/keyboardsurfer/android/widget/crouton/Style$Builder;
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 402
    iput p1, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->textColorResourceId:I

    .line 404
    return-object p0
.end method

.method public setTextColorValue(I)Lde/keyboardsurfer/android/widget/crouton/Style$Builder;
    .locals 0
    .param p1, "textColorValue"    # I

    .prologue
    .line 416
    iput p1, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->textColorValue:I

    .line 417
    return-object p0
.end method

.method public setTextShadowColor(I)Lde/keyboardsurfer/android/widget/crouton/Style$Builder;
    .locals 0
    .param p1, "textShadowColorResId"    # I

    .prologue
    .line 470
    iput p1, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->textShadowColorResId:I

    .line 471
    return-object p0
.end method

.method public setTextShadowDx(F)Lde/keyboardsurfer/android/widget/crouton/Style$Builder;
    .locals 0
    .param p1, "textShadowDx"    # F

    .prologue
    .line 482
    iput p1, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->textShadowDx:F

    .line 483
    return-object p0
.end method

.method public setTextShadowDy(F)Lde/keyboardsurfer/android/widget/crouton/Style$Builder;
    .locals 0
    .param p1, "textShadowDy"    # F

    .prologue
    .line 488
    iput p1, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->textShadowDy:F

    .line 489
    return-object p0
.end method

.method public setTextShadowRadius(F)Lde/keyboardsurfer/android/widget/crouton/Style$Builder;
    .locals 0
    .param p1, "textShadowRadius"    # F

    .prologue
    .line 476
    iput p1, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->textShadowRadius:F

    .line 477
    return-object p0
.end method

.method public setTextSize(I)Lde/keyboardsurfer/android/widget/crouton/Style$Builder;
    .locals 0
    .param p1, "textSize"    # I

    .prologue
    .line 464
    iput p1, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->textSize:I

    .line 465
    return-object p0
.end method

.method public setTileEnabled(Z)Lde/keyboardsurfer/android/widget/crouton/Style$Builder;
    .locals 0
    .param p1, "isTileEnabled"    # Z

    .prologue
    .line 388
    iput-boolean p1, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->isTileEnabled:Z

    .line 390
    return-object p0
.end method

.method public setWidth(I)Lde/keyboardsurfer/android/widget/crouton/Style$Builder;
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 359
    iput p1, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->widthInPixels:I

    .line 361
    return-object p0
.end method

.method public setWidthDimensionResId(I)Lde/keyboardsurfer/android/widget/crouton/Style$Builder;
    .locals 0
    .param p1, "widthDimensionResId"    # I

    .prologue
    .line 373
    iput p1, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->widthDimensionResId:I

    .line 375
    return-object p0
.end method
