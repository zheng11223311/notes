.class public final enum Lcom/intertrust/wasabi/Runtime$Property;
.super Ljava/lang/Enum;
.source "Runtime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intertrust/wasabi/Runtime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Property"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/intertrust/wasabi/Runtime$Property;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/intertrust/wasabi/Runtime$Property;

.field public static final enum MS3_ACCEPT_HOSTNAME_MISMATCH:Lcom/intertrust/wasabi/Runtime$Property;

.field public static final enum MS3_ACCEPT_SELF_SIGNED_CERTS:Lcom/intertrust/wasabi/Runtime$Property;

.field public static final enum PROXY_DASH_CONTENT_LENGTH:Lcom/intertrust/wasabi/Runtime$Property;

.field public static final enum ROOTED_OK:Lcom/intertrust/wasabi/Runtime$Property;

.field public static final enum STORAGE_DIRECTORY:Lcom/intertrust/wasabi/Runtime$Property;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/intertrust/wasabi/Runtime$Property;

    const-string v1, "MS3_ACCEPT_SELF_SIGNED_CERTS"

    invoke-direct {v0, v1, v2}, Lcom/intertrust/wasabi/Runtime$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intertrust/wasabi/Runtime$Property;->MS3_ACCEPT_SELF_SIGNED_CERTS:Lcom/intertrust/wasabi/Runtime$Property;

    .line 45
    new-instance v0, Lcom/intertrust/wasabi/Runtime$Property;

    const-string v1, "MS3_ACCEPT_HOSTNAME_MISMATCH"

    invoke-direct {v0, v1, v3}, Lcom/intertrust/wasabi/Runtime$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intertrust/wasabi/Runtime$Property;->MS3_ACCEPT_HOSTNAME_MISMATCH:Lcom/intertrust/wasabi/Runtime$Property;

    .line 52
    new-instance v0, Lcom/intertrust/wasabi/Runtime$Property;

    const-string v1, "STORAGE_DIRECTORY"

    invoke-direct {v0, v1, v4}, Lcom/intertrust/wasabi/Runtime$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intertrust/wasabi/Runtime$Property;->STORAGE_DIRECTORY:Lcom/intertrust/wasabi/Runtime$Property;

    .line 67
    new-instance v0, Lcom/intertrust/wasabi/Runtime$Property;

    const-string v1, "PROXY_DASH_CONTENT_LENGTH"

    invoke-direct {v0, v1, v5}, Lcom/intertrust/wasabi/Runtime$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intertrust/wasabi/Runtime$Property;->PROXY_DASH_CONTENT_LENGTH:Lcom/intertrust/wasabi/Runtime$Property;

    .line 77
    new-instance v0, Lcom/intertrust/wasabi/Runtime$Property;

    const-string v1, "ROOTED_OK"

    invoke-direct {v0, v1, v6}, Lcom/intertrust/wasabi/Runtime$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intertrust/wasabi/Runtime$Property;->ROOTED_OK:Lcom/intertrust/wasabi/Runtime$Property;

    .line 32
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/intertrust/wasabi/Runtime$Property;

    sget-object v1, Lcom/intertrust/wasabi/Runtime$Property;->MS3_ACCEPT_SELF_SIGNED_CERTS:Lcom/intertrust/wasabi/Runtime$Property;

    aput-object v1, v0, v2

    sget-object v1, Lcom/intertrust/wasabi/Runtime$Property;->MS3_ACCEPT_HOSTNAME_MISMATCH:Lcom/intertrust/wasabi/Runtime$Property;

    aput-object v1, v0, v3

    sget-object v1, Lcom/intertrust/wasabi/Runtime$Property;->STORAGE_DIRECTORY:Lcom/intertrust/wasabi/Runtime$Property;

    aput-object v1, v0, v4

    sget-object v1, Lcom/intertrust/wasabi/Runtime$Property;->PROXY_DASH_CONTENT_LENGTH:Lcom/intertrust/wasabi/Runtime$Property;

    aput-object v1, v0, v5

    sget-object v1, Lcom/intertrust/wasabi/Runtime$Property;->ROOTED_OK:Lcom/intertrust/wasabi/Runtime$Property;

    aput-object v1, v0, v6

    sput-object v0, Lcom/intertrust/wasabi/Runtime$Property;->$VALUES:[Lcom/intertrust/wasabi/Runtime$Property;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/intertrust/wasabi/Runtime$Property;
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/intertrust/wasabi/Runtime$Property;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/intertrust/wasabi/Runtime$Property;

    return-object v0
.end method

.method public static values()[Lcom/intertrust/wasabi/Runtime$Property;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/intertrust/wasabi/Runtime$Property;->$VALUES:[Lcom/intertrust/wasabi/Runtime$Property;

    invoke-virtual {v0}, [Lcom/intertrust/wasabi/Runtime$Property;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/intertrust/wasabi/Runtime$Property;

    return-object v0
.end method
