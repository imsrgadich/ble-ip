
# coding: utf-8

# In[1]:


import csv
import json


sensors = []
with open('AA locations 2.txt', 'r') as csvfile:
    reader = csv.reader(csvfile, delimiter=',')
    for row in reader:
        device = row[0]        
        sensors.append(
            {
                'id': device,
                'x': int(row[1]),
                'y': int(row[2])
            }
        )


# In[2]:


import numpy as np

N = len(sensors)
X = np.zeros((N,2))
y = np.zeros(N)
labels = []
for i, sensor in enumerate(sensors):
    # print(i, sensor)
    X[i,0] = sensor['x']
    X[i,1] = sensor['y']
    labels.append(sensor['id'][-2:])


# In[3]:


from PIL import Image
import matplotlib.pyplot as plt


# In[4]:


get_ipython().magic(u'matplotlib inline')

I = Image.open("floorplan.png")
p = np.asarray(I).astype('float')
w, h = I.size
plt.figure()


fig, ax = plt.subplots(1, 1, figsize=(40,20))

ax.imshow(I, aspect='equal')


# In[ ]:


get_ipython().magic(u'matplotlib inline')

I = Image.open("floorplan.jpg")
p = np.asarray(I).astype('float')
w, h = I.size
plt.figure()


fig, ax = plt.subplots(1, 1, figsize=(40,20))

ax.imshow(I, aspect='equal')


# In[32]:


get_ipython().magic(u'matplotlib inline')

I = Image.open("floorplan.jpg")
p = np.asarray(I).astype('float')
w, h = I.size
plt.figure()


fig, ax = plt.subplots(1, 1, figsize=(40,20))

ax.imshow(I, aspect='equal')

'''ax.xaxis.set_ticklabels([])
ax.yaxis.set_ticklabels([])
ax.set_visible(False)'''

r = 1.78
plt.scatter(X[:,0]*r,X[:,1]*r, s=600)

gap = 15

for i, txt in enumerate(labels):
    ax.annotate(txt, (X[i,0]*r+gap,X[i,1]*r), fontsize=40)

#plt.tick_params(labelcolor='none', top='off', bottom='off', left='off', right='off')
#plt.grid(False)
plt.axis('off')


# In[33]:


##from matplotlib.backends.backend_pdf import PdfPages
#plt.xticks([])
#plt.yticks([])
fig.savefig("aa_floorplan.pdf",bbox_inches='tight', pad_inches=0)


# In[13]:


i=10


# In[14]:


i

