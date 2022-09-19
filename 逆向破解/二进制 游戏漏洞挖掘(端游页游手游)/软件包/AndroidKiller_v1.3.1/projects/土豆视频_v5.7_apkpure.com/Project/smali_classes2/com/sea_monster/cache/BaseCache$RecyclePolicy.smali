.class public final enum Lcom/sea_monster/cache/BaseCache$RecyclePolicy;
.super Ljava/lang/Enum;
.source "BaseCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sea_monster/cache/BaseCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecyclePolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sea_monster/cache/BaseCache$RecyclePolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sea_monster/cache/BaseCache$RecyclePolicy;

.field public static final enum ALWAYS:Lcom/sea_monster/cache/BaseCache$RecyclePolicy;

.field public static final enum DISABLED:Lcom/sea_monster/cache/BaseCache$RecyclePolicy;

.field public static final enum PRE_HONEYCOMB_ONLY:Lcom/sea_monster/cache/BaseCache$RecyclePolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 278
    new-instance v0, Lcom/sea_monster/cache/BaseCache$RecyclePolicy;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v2}, Lcom/sea_monster/cache/BaseCache$RecyclePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sea_monster/cache/BaseCache$RecyclePolicy;->DISABLED:Lcom/sea_monster/cache/BaseCache$RecyclePolicy;

    .line 283
    new-instance v0, Lcom/sea_monster/cache/BaseCache$RecyclePolicy;

    const-string v1, "PRE_HONEYCOMB_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/sea_monster/cache/BaseCache$RecyclePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sea_monster/cache/BaseCache$RecyclePolicy;->PRE_HONEYCOMB_ONLY:Lcom/sea_monster/cache/BaseCache$RecyclePolicy;

    .line 288
    new-instance v0, Lcom/sea_monster/cache/BaseCache$RecyclePolicy;

    const-string v1, "ALWAYS"

    invoke-direct {v0, v1, v4}, Lcom/sea_monster/cache/BaseCache$RecyclePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sea_monster/cache/BaseCache$RecyclePolicy;->ALWAYS:Lcom/sea_monster/cache/BaseCache$RecyclePolicy;

    .line 274
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sea_monster/cache/BaseCache$RecyclePolicy;

    sget-object v1, Lcom/sea_monster/cache/BaseCache$RecyclePolicy;->DISABLED:Lcom/sea_monster/cache/BaseCache$RecyclePolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sea_monster/cache/BaseCache$RecyclePolicy;->PRE_HONEYCOMB_ONLY:Lcom/sea_monster/cache/BaseCache$RecyclePolicy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sea_monster/cache/BaseCache$RecyclePolicy;->ALWAYS:Lcom/sea_monster/cache/BaseCache$RecyclePolicy;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sea_monster/cache/BaseCache$RecyclePolicy;->$VALUES:[Lcom/sea_monster/cache/BaseCache$RecyclePolicy;

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
    .line 274
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sea_monster/cache/BaseCache$RecyclePolicy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 274
    const-class v0, Lcom/sea_monster/cache/BaseCache$RecyclePolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sea_monster/cache/BaseCache$RecyclePolicy;

    return-object v0
.end method

.method public static values()[Lcom/sea_monster/cache/BaseCache$RecyclePolicy;
    .locals 1

    .prologue
    .line 274
    sget-object v0, Lcom/sea_monster/cache/BaseCache$RecyclePolicy;->$VALUES:[Lcom/sea_monster/cache/BaseCache$RecyclePolicy;

    invoke-virtual {v0}, [Lcom/sea_monster/cache/BaseCache$RecyclePolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sea_monster/cache/BaseCache$RecyclePolicy;

    return-object v0
.end method


# virtual methods
.method canCached()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 291
    sget-object v1, Lcom/sea_monster/cache/BaseCache$1;->$SwitchMap$com$sea_monster$cache$BaseCache$RecyclePolicy:[I

    invoke-virtual {p0}, Lcom/sea_monster/cache/BaseCache$RecyclePolicy;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 296
    :cond_0
    :goto_0
    return v0

    .line 294
    :pswitch_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 291
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method canRecycle()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 300
    sget-object v2, Lcom/sea_monster/cache/BaseCache$1;->$SwitchMap$com$sea_monster$cache$BaseCache$RecyclePolicy:[I

    invoke-virtual {p0}, Lcom/sea_monster/cache/BaseCache$RecyclePolicy;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 309
    :goto_0
    :pswitch_0
    return v1

    .line 304
    :pswitch_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_0

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :pswitch_2
    move v1, v0

    .line 306
    goto :goto_0

    .line 300
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
