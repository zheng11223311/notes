.class public final enum Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;
.super Ljava/lang/Enum;
.source "WaterMark.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MarkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;

.field public static final enum TUDOU:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;

.field public static final enum VIDEO:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;

    const-string v1, "TUDOU"

    invoke-direct {v0, v1, v2}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;->TUDOU:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;

    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v3}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;->VIDEO:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;

    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;->TUDOU:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;->VIDEO:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;->$VALUES:[Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;

    return-object v0
.end method

.method public static values()[Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;->$VALUES:[Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;

    invoke-virtual {v0}, [Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;

    return-object v0
.end method
