.class public Lcom/unicom/iap/bean/Mob;
.super Ljava/lang/Object;
.source "Mob.java"


# instance fields
.field private area:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;

.field private province:Ljava/lang/String;

.field private sequence:Ljava/lang/String;

.field private userid:Ljava/lang/String;

.field private usermob:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "userid"    # Ljava/lang/String;
    .param p2, "sequence"    # Ljava/lang/String;
    .param p3, "usermob"    # Ljava/lang/String;
    .param p4, "province"    # Ljava/lang/String;
    .param p5, "area"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/unicom/iap/bean/Mob;->userid:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/unicom/iap/bean/Mob;->sequence:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/unicom/iap/bean/Mob;->usermob:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/unicom/iap/bean/Mob;->province:Ljava/lang/String;

    .line 23
    iput-object p5, p0, Lcom/unicom/iap/bean/Mob;->area:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public getArea()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/unicom/iap/bean/Mob;->area:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/unicom/iap/bean/Mob;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/unicom/iap/bean/Mob;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getSequence()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/unicom/iap/bean/Mob;->sequence:Ljava/lang/String;

    return-object v0
.end method

.method public getUserid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/unicom/iap/bean/Mob;->userid:Ljava/lang/String;

    return-object v0
.end method

.method public getUsermob()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/unicom/iap/bean/Mob;->usermob:Ljava/lang/String;

    return-object v0
.end method

.method public setArea(Ljava/lang/String;)V
    .locals 0
    .param p1, "area"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/unicom/iap/bean/Mob;->area:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/unicom/iap/bean/Mob;->phoneNumber:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0
    .param p1, "province"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/unicom/iap/bean/Mob;->province:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setSequence(Ljava/lang/String;)V
    .locals 0
    .param p1, "sequence"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/unicom/iap/bean/Mob;->sequence:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setUserid(Ljava/lang/String;)V
    .locals 0
    .param p1, "userid"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/unicom/iap/bean/Mob;->userid:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setUsermob(Ljava/lang/String;)V
    .locals 0
    .param p1, "usermob"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/unicom/iap/bean/Mob;->usermob:Ljava/lang/String;

    .line 58
    return-void
.end method
