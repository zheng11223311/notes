.class public final enum Lcom/tudou/android/Youku$FromType;
.super Ljava/lang/Enum;
.source "Youku.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/android/Youku;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FromType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tudou/android/Youku$FromType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tudou/android/Youku$FromType;

.field public static final enum Tudou:Lcom/tudou/android/Youku$FromType;

.field public static final enum Youku:Lcom/tudou/android/Youku$FromType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 202
    new-instance v0, Lcom/tudou/android/Youku$FromType;

    const-string v1, "Youku"

    invoke-direct {v0, v1, v2}, Lcom/tudou/android/Youku$FromType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tudou/android/Youku$FromType;->Youku:Lcom/tudou/android/Youku$FromType;

    new-instance v0, Lcom/tudou/android/Youku$FromType;

    const-string v1, "Tudou"

    invoke-direct {v0, v1, v3}, Lcom/tudou/android/Youku$FromType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tudou/android/Youku$FromType;->Tudou:Lcom/tudou/android/Youku$FromType;

    .line 201
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/tudou/android/Youku$FromType;

    sget-object v1, Lcom/tudou/android/Youku$FromType;->Youku:Lcom/tudou/android/Youku$FromType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tudou/android/Youku$FromType;->Tudou:Lcom/tudou/android/Youku$FromType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/tudou/android/Youku$FromType;->$VALUES:[Lcom/tudou/android/Youku$FromType;

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
    .line 201
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tudou/android/Youku$FromType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 201
    const-class v0, Lcom/tudou/android/Youku$FromType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tudou/android/Youku$FromType;

    return-object v0
.end method

.method public static values()[Lcom/tudou/android/Youku$FromType;
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/tudou/android/Youku$FromType;->$VALUES:[Lcom/tudou/android/Youku$FromType;

    invoke-virtual {v0}, [Lcom/tudou/android/Youku$FromType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tudou/android/Youku$FromType;

    return-object v0
.end method
