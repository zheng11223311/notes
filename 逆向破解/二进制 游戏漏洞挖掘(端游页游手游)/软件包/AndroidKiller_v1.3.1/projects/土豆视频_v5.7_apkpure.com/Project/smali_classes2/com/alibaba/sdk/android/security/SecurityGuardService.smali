.class public interface abstract Lcom/alibaba/sdk/android/security/SecurityGuardService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract analyzeOpenId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/Long;
.end method

.method public abstract genAsymEncryptedSeedKey()Ljava/lang/String;
.end method

.method public abstract genAsymEncryptedSeedKey(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract genSeedKey()[B
.end method

.method public abstract getAppKey()Ljava/lang/String;
.end method

.method public abstract getByteArrayFromDynamicDataStore(Ljava/lang/String;)[B
.end method

.method public abstract getProviderName()Ljava/lang/String;
.end method

.method public abstract getSecurityToken()Ljava/lang/String;
.end method

.method public abstract getValueFromDynamicDataStore(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getValueFromStaticDataStore(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract putValueInDynamicDataStore(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract putValueInDynamicDataStore(Ljava/lang/String;[B)V
.end method

.method public abstract removeValueFromDynamicDataStore(Ljava/lang/String;)V
.end method

.method public abstract savePublicKey([B)V
.end method

.method public abstract saveSecret(Ljava/lang/String;[B)V
.end method

.method public abstract sign(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract signRequest(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract symDecrypt(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract symDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract symEncrypt(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract symEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
